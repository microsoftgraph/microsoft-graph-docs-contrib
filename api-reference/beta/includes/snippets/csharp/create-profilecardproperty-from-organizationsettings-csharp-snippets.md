---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ProfileCardProperty
{
	DirectoryPropertyName = "CustomAttribute1",
	Annotations = new List<ProfileCardAnnotation>
	{
		new ProfileCardAnnotation
		{
			DisplayName = "Cost Center",
			Localizations = new List<DisplayNameLocalization>
			{
				new DisplayNameLocalization
				{
					LanguageTag = "ru-RU",
					DisplayName = "центр затрат",
				},
			},
		},
	},
};
var result = await graphClient.Organization["{organization-id}"].Settings.ProfileCardProperties.PostAsync(requestBody);


```