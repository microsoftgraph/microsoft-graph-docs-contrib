
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var internetMessageHeaders = new InternetMessageHeader
{
	Name = "x-custom-header-group-id",
	Value = "WA001",
};

var _internetMessageHeaders = new InternetMessageHeader
{
	Name = "x-custom-header-group-name",
	Value = "Washington",
};

var internetMessageHeadersList = new List<InternetMessageHeader>();
internetMessageHeadersList.Add( _internetMessageHeaders );
internetMessageHeadersList.Add( internetMessageHeaders );

var emailAddress = new EmailAddress
{
	Address = "AlexW@contoso.OnMicrosoft.com",
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
	Content = "The group represents Washington.",
};

var message = new Message
{
	Subject = "9/8/2018: concert",
	Body = body,
	ToRecipients = toRecipientsList,
	InternetMessageHeaders = internetMessageHeadersList,
};

await graphClient.Me.Messages
	.Request()
	.AddAsync(message);

```