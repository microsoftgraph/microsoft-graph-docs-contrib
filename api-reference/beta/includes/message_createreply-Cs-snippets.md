
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailAddress = new EmailAddress
{
	Address = "randiw@contoso.onmicrosoft.com",
	Name = "Randi Welch",
};

var toRecipients = new Recipient
{
	EmailAddress = emailAddress,
};

var emailAddress = new EmailAddress
{
	Address = "samanthab@contoso.onmicrosoft.com",
	Name = "Samantha Booth",
};

var _toRecipients = new Recipient
{
	EmailAddress = emailAddress,
};

var toRecipientsList = new List<Recipient>();
toRecipientsList.Add( _toRecipients );
toRecipientsList.Add( toRecipients );

var message = new Message
{
	ToRecipients = toRecipientsList,
};

var comment = "Samantha, Randi, would you name the group if the project is approved, please?";

await graphClient.Me.Messages["AAMkADA1MTAAAAqldOAAA="]
	.CreateReply(message,comment)
	.Request()
	.PostAsync()

```