
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationUser = new EducationUser
{
	DisplayName = "Rogelio Cazares",
	GivenName = "Rogelio",
	MiddleName = "Fernando",
	Surname = "Cazares",
};

await graphClient.Education.Users["{user-id}"]
	.Request()
	.UpdateAsync(educationUser);

```