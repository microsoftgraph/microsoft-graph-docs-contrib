
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var recipients = new DriveRecipient
{
	Email = "ryan@contoso.org",
};

var recipientsList = new List<DriveRecipient>();
recipientsList.Add( recipients );

var message = "Here's the file that we're collaborating on.";

var requireSignIn = true;

var sendInvitation = true;

var rolesList = new List<String>();
rolesList.Add( "write" );

var password = "password123";

var expirationDateTime = 7/15/2018 2:00:00 PM;

await graphClient.Me.Drive.Items["{item-id}"]
	.Invite(requireSignIn,rolesList,sendInvitation,message,recipientsList,expirationDateTime,password)
	.Request()
	.PostAsync()

```