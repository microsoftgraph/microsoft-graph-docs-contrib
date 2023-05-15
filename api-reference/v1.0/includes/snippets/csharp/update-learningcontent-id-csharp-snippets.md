---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new LearningContent
{
	Title = "Manage classes, resources, assessment, and planning in Microsoft Teams with Beedle",
	Description = "A module to guide users through the various teaching and learning enhancements that Beedle provides within Microsoft Teams, with many examples of everyday application.",
	ContentWebUrl = "https://learn.microsoft.com/learn/modules/manage-classes-resources-assessment-planning-beedle/",
	SourceName = "MsLearn",
	ThumbnailWebUrl = "https://syndetics.com/index.aspx?isbn=9783319672175/LC.GIF",
	LanguageTag = "en-us",
	NumberOfPages = 9,
	Duration = TimeSpan.Parse("PT20M"),
	Format = "Book",
	CreatedDateTime = DateTimeOffset.Parse("2018-01-01T00:00:00Z"),
	LastModifiedDateTime = DateTimeOffset.Parse("2021-04-01T04:26:06.1995367Z"),
	Contributors = new List<string>
	{
		"Lina Wagner",
		"Lisa Richter",
	},
	AdditionalTags = new List<string>
	{
		"Create private or public teams",
		"Add members to teams",
	},
	SkillTags = new List<string>
	{
		"Create teams",
		"Teams channels",
		"Teams members",
	},
	IsActive = true,
	IsPremium = false,
	IsSearchable = true,
};
var result = await graphClient.EmployeeExperience.LearningProviders["{learningProvider-id}"].LearningContents["{learningContent-id}"].PatchAsync(requestBody);


```