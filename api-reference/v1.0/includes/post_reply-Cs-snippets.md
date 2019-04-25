
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attachments = new Attachment
{
	LastModifiedDateTime = "datetime-value",
	Name = "name-value",
	ContentType = "contentType-value",
	Size = 99,
	IsInline = true,
	Id = "id-value",
};

var attachmentsList = new List<Attachment>();
attachmentsList.Add( attachments );

var inReplyTo = new Post
{
};

var categoriesList = new List<String>();
categoriesList.Add( "categories-value" );

var emailAddress = new EmailAddress
{
	Name = "name-value",
	Address = "address-value",
};

var newParticipants = new Recipient
{
	EmailAddress = emailAddress,
};

var newParticipantsList = new List<Recipient>();
newParticipantsList.Add( newParticipants );

var emailAddress = new EmailAddress
{
	Name = "name-value",
	Address = "address-value",
};

var sender = new Recipient
{
	EmailAddress = emailAddress,
};

var emailAddress = new EmailAddress
{
	Name = "name-value",
	Address = "address-value",
};

var from = new Recipient
{
	EmailAddress = emailAddress,
};

var body = new ItemBody
{
	ContentType = BodyType.Text,
	Content = "content-value",
};

var post = new Post
{
	Body = body,
	ReceivedDateTime = "datetime-value",
	HasAttachments = true,
	From = from,
	Sender = sender,
	ConversationThreadId = "conversationThreadId-value",
	NewParticipants = newParticipantsList,
	ConversationId = "conversationId-value",
	CreatedDateTime = "datetime-value",
	LastModifiedDateTime = "datetime-value",
	ChangeKey = "changeKey-value",
	Categories = categoriesList,
	Id = "id-value",
	InReplyTo = inReplyTo,
	Attachments = attachmentsList,
};

await graphClient.Groups["{id}"].Threads["{id}"].Posts["{id}"]
	.Reply(post)
	.Request()
	.PostAsync()

```