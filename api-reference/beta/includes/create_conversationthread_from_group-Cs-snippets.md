
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailAddress = new EmailAddress
{
	Name = "Alex Darrow",
	Address = "alexd@contoso.com",
};

var newParticipants = new Recipient
{
	EmailAddress = emailAddress,
};

var newParticipantsList = new List<Recipient>();
newParticipantsList.Add( newParticipants );

var body = new ItemBody
{
	ContentType = BodyType.Html,
	Content = "this is body content",
};

var posts = new Post
{
	Body = body,
	NewParticipants = newParticipantsList,
};

var postsList = new List<Post>();
postsList.Add( posts );

var conversationThread = new ConversationThread
{
	Topic = "New Conversation Thread Topic",
	Posts = postsList,
};

await graphClient.Groups["{id}"].Threads
	.Request()
	.AddAsync(conversationThread);

```