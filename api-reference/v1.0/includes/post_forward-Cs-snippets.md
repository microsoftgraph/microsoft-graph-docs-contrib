
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var comment = "comment-value";

var emailAddress = new EmailAddress
{
	Name = "name-value",
	Address = "address-value",
};

var toRecipients = new Recipient
{
	EmailAddress = emailAddress,
};

var toRecipientsList = new List<Recipient>();
toRecipientsList.Add( toRecipients );

await graphClient.Groups["{id}"].Threads["{id}"].Posts["{id}"]
	.Forward(comment,toRecipientsList)
	.Request()
	.PostAsync()

```