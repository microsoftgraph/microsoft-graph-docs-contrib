
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailAddress = new EmailAddress
{
	Address = "AdeleV@contoso.onmicrosoft.com",
};

var toRecipients = new Recipient
{
	EmailAddress = emailAddress,
};

var toRecipientsList = new List<Recipient>();
toRecipientsList.Add( toRecipients );

var body = new ItemBody
{
	ContentType = BodyType.Html,
	Content = "They were <b>awesome</b>!",
};

var message = new Message
{
	Subject = "Did you see last night's game?",
	Importance = Importance.Low,
	Body = body,
	ToRecipients = toRecipientsList,
};

await graphClient.Me.Messages
	.Request()
	.AddAsync(message);

```