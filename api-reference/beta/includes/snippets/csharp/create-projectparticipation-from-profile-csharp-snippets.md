---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ProjectParticipation
{
	Categories = new List<string>
	{
		"Branding",
	},
	Client = new CompanyDetail
	{
		DisplayName = "Contoso Ltd.",
		Department = "Corporate Marketing",
		WebUrl = "https://www.contoso.com",
	},
	DisplayName = "Contoso Re-branding Project",
	Detail = new PositionDetail
	{
		Company = new CompanyDetail
		{
			DisplayName = "Adventureworks Inc.",
			Department = "Consulting",
			WebUrl = "https://adventureworks.com",
		},
		Description = "Rebranding of Contoso Ltd.",
		JobTitle = "Lead PM Rebranding",
		Role = "project management",
		Summary = "A 6 month project to help Contoso rebrand after they were divested from a parent organization.",
	},
};
var result = await graphClient.Me.Profile.Projects.PostAsync(requestBody);


```