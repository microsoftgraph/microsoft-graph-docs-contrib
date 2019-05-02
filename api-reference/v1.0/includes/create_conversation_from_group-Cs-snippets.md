
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailAddress = new EmailAddress
{
	Name = "Adele Vance",
	Address = "AdeleV@contoso.onmicrosoft.com",
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
	Content = "What do we know so far?",
};

var posts = new Post
{
	Body = body,
	NewParticipants = newParticipantsList,
};

var postsList = new List<Post>();
postsList.Add( posts );

var threads = new ConversationThread
{
	Posts = postsList,
};

var threadsList = new List<ConversationThread>();
threadsList.Add( threads );

var conversation = new Conversation
{
	Topic = "New locations for this quarter",
	Threads = threadsList,
};

await graphClient.Groups["29981b6a-0e57-42dc-94c9-cd24f5306196"].Conversations
	.Request()
	.AddAsync(conversation);

```