
##Questions:

1) What are we buiding? We are building a personal site. A place where we can blog, share examples of our work, and have people contact us.
2) Who are building it for? We are build it for ourselvers, but also the communiti. Sharing what we are learning by blogging is a greate way to learn for ourselves, but we teach others in the process. Show potential employers that we know what we are doing.
3) What features do we want to have?
- Posts
	-Create / Edit / Destroy
	-Markdown
	-Syntax highlighting
	-Comments (Disqus)
- Projects
	-Create / Edit / Destroy
- Contact
	-Contact form
	-Sendgrid
- User (Devise) – Make sure I am the unique to create a post!

##User stories:

→ As a blank, I want to be able to blank, so that blank.

-	As a user, I want to be able to create posts só that I can share what I am learning on my blog.
-	As a user, I want to be able to edit & destroy posts, só that I can manage my blog.
-	As a user, I want to be able to write posts in mardown format só that it’s easy for me to writes posts.
-	As a user, I want to be able to ightlight the various syntar of code blocks that I share on my blogs.
-	As a user, I want to show the visitors and potential employers examples of my work, or stuff I’ve built.
-	As a user, I want to be able to have visitors concat me through a form on my site.
-	As a user, I want visitors to be able to comments on my posts.

## Modeling our Data

→ Post
	title:string
	content:text
→ Project
	title: string
	description:text
	link:string
→ Users

##Think through the pages we need in our app

- Home
	-Posts#index
	-Posts#Show
	-Projects#index
	-Projects#show
	-Contact