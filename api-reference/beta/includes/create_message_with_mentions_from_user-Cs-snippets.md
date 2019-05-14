
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var mentioned = new EmailAddress
{
	Name = "Dana Swope",
	Address = "danas@contoso.onmicrosoft.com",
};

var mentions = new Mention
{
	Mentioned = mentioned,
};

var mentionsList = new List<Mention>();
mentionsList.Add( mentions );

var emailAddress = new EmailAddress
{
	Name = "Samantha Booth",
	Address = "samanthab@contoso.onmicrosoft.com",
};

var toRecipients = new Recipient
{
	EmailAddress = emailAddress,
};

var toRecipientsList = new List<Recipient>();
toRecipientsList.Add( toRecipients );

var message = new Message
{
	Subject = "Party planning",
	ToRecipients = toRecipientsList,
	Mentions = mentionsList,
};

await graphClient.Me.Messages
	.Request()
	.AddAsync(message);

```