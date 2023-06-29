---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new LearningProvider
{
	DisplayName = "Microsoft",
	SquareLogoWebUrlForDarkTheme = "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
	LongLogoWebUrlForDarkTheme = "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
	SquareLogoWebUrlForLightTheme = "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
	LongLogoWebUrlForLightTheme = "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
	LoginWebUrl = "https://www.linkedin.com/learning-login/teams",
	IsCourseActivitySyncEnabled = true,
};
var result = await graphClient.EmployeeExperience.LearningProviders.PostAsync(requestBody);


```