
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var body = new ItemBody
{
	ContentType = BodyType.Text,
	Content = "content-value",
};

var post = new Post
{
	Body = body,
};

await graphClient.Groups["{id}"].Threads["{id}"]
	.Reply(post)
	.Request()
	.PostAsync()

```