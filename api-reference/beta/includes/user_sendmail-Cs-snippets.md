
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailAddress = new EmailAddress
{
	Address = "danas@contoso.onmicrosoft.com",
};

var ccRecipients = new Recipient
{
	EmailAddress = emailAddress,
};

var ccRecipientsList = new List<Recipient>();
ccRecipientsList.Add( ccRecipients );

var emailAddress = new EmailAddress
{
	Address = "samanthab@contoso.onmicrosoft.com",
};

var toRecipients = new Recipient
{
	EmailAddress = emailAddress,
};

var toRecipientsList = new List<Recipient>();
toRecipientsList.Add( toRecipients );

var body = new ItemBody
{
	ContentType = BodyType.Text,
	Content = "The new cafeteria is open.",
};

var message = new Message
{
	Subject = "Meet for lunch?",
	Body = body,
	ToRecipients = toRecipientsList,
	CcRecipients = ccRecipientsList,
};

var saveToSentItems = "false";

await graphClient.Me
	.SendMail(message,saveToSentItems)
	.Request()
	.PostAsync()

```