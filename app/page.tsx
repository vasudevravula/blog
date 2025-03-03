import { BlogPosts } from 'app/components/posts'

export default function Page() {
  return (
    <section>
      <h1 className="mb-8 text-2xl font-semibold tracking-tighter">
        Hi, I'm Vasudev Ravula 👋
      </h1>
      <p className="mb-4">
        {`With a strong background in software engineering, I specialize in building scalable and secure applications using Angular, .NET, and cloud technologies like Google Cloud and Terraform. Over the years, I've contributed to complex platform migrations, API development, and cloud infrastructure design. Beyond coding, I have a deep passion for sports—whether it’s soccer, cricket, or any game that keeps me moving. I also practice Hatha yoga and actively engage with the Isha Foundation, exploring the deeper dimensions of well-being through yoga and meditation.`}
      </p>
      <div className="my-8">
        <BlogPosts />
      </div>
    </section>
  )
}
