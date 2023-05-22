---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new SkillProficiency
{
	Categories = new List<string>
	{
		"Professional",
	},
	Proficiency = SkillProficiencyLevel.AdvancedProfessional,
};
var result = await graphClient.Me.Profile.Skills["{skillProficiency-id}"].PatchAsync(requestBody);


```