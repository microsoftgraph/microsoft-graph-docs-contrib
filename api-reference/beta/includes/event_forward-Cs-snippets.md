
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailAddress = new EmailAddress
{
	Address = "danas@contoso.onmicrosoft.com",
	Name = "Dana Swope",
};

var ToRecipients = new Recipient
{
	EmailAddress = emailAddress,
};

var ToRecipientsList = new List<Recipient>();
ToRecipientsList.Add( ToRecipients );

var Comment = "Dana, hope you can make this meeting.";

await graphClient.Me.Events["{id}"]
	.Forward(comment,toRecipientsList)
	.Request()
	.PostAsync()

```