---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ProjectParticipation
{
	AllowedAudiences = AllowedAudiences.Organization,
	Client = new CompanyDetail
	{
		Department = "Corporate Marketing",
		WebUrl = "https://www.contoso.com",
	},
};
var result = await graphClient.Me.Profile.Projects["{projectParticipation-id}"].PatchAsync(requestBody);


```