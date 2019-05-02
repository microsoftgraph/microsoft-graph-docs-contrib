
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var passwordProfile = new PasswordProfile
{
	ForceChangePasswordNextSignIn = true,
	Password = "password-value",
};

var user = new User
{
	AccountEnabled = true,
	DisplayName = "displayName-value",
	MailNickname = "mailNickname-value",
	UserPrincipalName = "upn-value@tenant-value.onmicrosoft.com",
	PasswordProfile = passwordProfile,
};

await graphClient.Users
	.Request()
	.AddAsync(user);

```