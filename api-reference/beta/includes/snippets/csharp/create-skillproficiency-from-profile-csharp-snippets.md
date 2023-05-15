---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new SkillProficiency
{
	Categories = new List<string>
	{
		"Professional",
	},
	AllowedAudiences = AllowedAudiences.Organization,
	DisplayName = "API Design",
	Proficiency = SkillProficiencyLevel.GeneralProfessional,
	CollaborationTags = new List<string>
	{
		"ableToMentor",
	},
};
var result = await graphClient.Me.Profile.Skills.PostAsync(requestBody);


```