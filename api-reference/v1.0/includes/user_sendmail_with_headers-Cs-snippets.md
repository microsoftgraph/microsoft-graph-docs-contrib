
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var internetMessageHeaders = new InternetMessageHeader
{
	Name = "x-custom-header-group-id",
	Value = "NV001",
};

var _internetMessageHeaders = new InternetMessageHeader
{
	Name = "x-custom-header-group-name",
	Value = "Nevada",
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
	Content = "The group represents Nevada.",
};

var message = new Message
{
	Subject = "9/9/2018: concert",
	Body = body,
	ToRecipients = toRecipientsList,
	InternetMessageHeaders = internetMessageHeadersList,
};

await graphClient.Me
	.SendMail(message,saveToSentItems)
	.Request()
	.PostAsync()

```