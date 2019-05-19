
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var body = new ItemBody
{
	ContentType = BodyType.Html,
	Content = "this is body content",
};

var posts = new Post
{
	Body = body,
};

var postsList = new List<Post>();
postsList.Add( posts );

var conversationThread = new ConversationThread
{
	Topic = "topic-value",
	Posts = postsList,
};

await graphClient.Groups["{id}"].Conversations["{id}"].Threads
	.Request()
	.AddAsync(conversationThread);

```