
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var invitation = new Invitation
{
	InvitedUserEmailAddress = "yyy@test.com",
	InviteRedirectUrl = "https://myapp.com",
};

await graphClient.Invitations
	.Request()
	.AddAsync(invitation);

```