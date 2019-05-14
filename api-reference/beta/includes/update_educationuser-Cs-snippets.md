
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationUser = new EducationUser
{
	DisplayName = "Rogelio Cazares",
	GivenName = "Rogelio",
	MiddleName = "Fernando",
	Surname = "Cazares",
};

await graphClient.Education.Users["13020"]
	.Request()
	.UpdateAsync(educationUser);

```