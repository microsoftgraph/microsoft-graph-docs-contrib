
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var body = new ItemBody
{
	ContentType = BodyType.Text,
	Content = "content-value",
};

var message = new Message
{
	ReceivedDateTime = "datetime-value",
	SentDateTime = "datetime-value",
	HasAttachments = true,
	Subject = "subject-value",
	Body = body,
	BodyPreview = "bodyPreview-value",
};

await graphClient.Me.MailFolders["{id}"].Messages
	.Request()
	.AddAsync(message);

```