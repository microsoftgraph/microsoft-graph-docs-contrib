---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var learningContent = new LearningContent
{
	Title = "Manage classes, resources, assessment, and planning in Microsoft Teams with Beedle",
	Description = "A module to guide users through the various teaching and learning enhancements that Beedle provides within Microsoft Teams, with many examples of everyday application.",
	ContentWebUrl = "https://docs.microsoft.com/learn/modules/manage-classes-resources-assessment-planning-beedle/",
	SourceName = "MsLearn",
	ThumbnailWebUrl = "https://syndetics.com/index.aspx?isbn=9783319672175/LC.GIF",
	LanguageTag = "en-us",
	NumberOfPages = 9,
	Duration = new Duration("PT20M"),
	Format = "Book",
	CreatedDateTime = DateTimeOffset.Parse("2018-01-01T00:00:00"),
	LastModifiedDateTime = DateTimeOffset.Parse("2021-04-01T04:26:06.1995367Z"),
	Contributor = "Scott Simpson",
	AdditionalTags = new List<String>()
	{
		"Create private or public teams",
		"Add members to teams"
	},
	SkillTags = new List<String>()
	{
		"Create teams",
		"Teams channels",
		"Teams members"
	},
	IsActive = true,
	IsPremium = false,
	IsSearchable = true
};

await graphClient.EmployeeExperience.LearningProviders["{learningProvider-id}"].LearningContents["{learningContent-id}"]
	.Request()
	.UpdateAsync(learningContent);

```