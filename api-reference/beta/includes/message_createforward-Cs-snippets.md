
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailAddress = new EmailAddress
{
	Address = "danas@contoso.onmicrosoft.com",
	Name = "Dana Swope",
};

var toRecipients = new Recipient
{
	EmailAddress = emailAddress,
};

var toRecipientsList = new List<Recipient>();
toRecipientsList.Add( toRecipients );

var message = new Message
{
	IsDeliveryReceiptRequested = true,
	ToRecipients = toRecipientsList,
};

var comment = "Dana, just want to make sure you get this; you'll need this if the project gets approved.";

await graphClient.Me.Messages["AAMkADA1MTAAAH5JaLAAA="]
	.CreateForward(message,comment,toRecipientsList)
	.Request()
	.PostAsync()

```