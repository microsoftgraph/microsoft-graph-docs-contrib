
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

var Message = new Message
{
	Subject = "Project kickoff",
	ToRecipients = toRecipientsList,
	Mentions = mentionsList,
};

await graphClient.Me
	.SendMail(message,saveToSentItems)
	.Request()
	.PostAsync()

```