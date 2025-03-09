# Use an official lightweight Node.js image
FROM node:18-alpine AS builder

WORKDIR /app

# Copy package.json and package-lock.json first (for caching)
COPY package*.json ./

# Install dependencies
RUN npm install --frozen-lockfile

# Copy the entire project
COPY . .

# Build the Next.js app
RUN npm run build

# ------------------------
# Production Image
# ------------------------
FROM node:18-alpine AS runner

WORKDIR /app

# Copy only necessary files from the builder stage
COPY --from=builder /app/package.json /app/package-lock.json ./
COPY --from=builder /app/.next ./.next
COPY --from=builder /app/node_modules ./node_modules

# Ensure blog posts directory exists
COPY --from=builder /app/app/blog/posts ./app/blog/posts

# Expose port
EXPOSE 3000

# Start the Next.js production server
CMD ["npm", "run", "start"]
