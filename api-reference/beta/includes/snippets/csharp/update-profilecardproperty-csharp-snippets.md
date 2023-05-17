---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ProfileCardProperty
{
	Annotations = new List<ProfileCardAnnotation>
	{
		new ProfileCardAnnotation
		{
			Localizations = new List<DisplayNameLocalization>
			{
				new DisplayNameLocalization
				{
					LanguageTag = "no-NB",
					DisplayName = "Kostnads Senter",
				},
			},
		},
	},
};
var result = await graphClient.Organization["{organization-id}"].Settings.ProfileCardProperties["{profileCardProperty-id}"].PatchAsync(requestBody);


```