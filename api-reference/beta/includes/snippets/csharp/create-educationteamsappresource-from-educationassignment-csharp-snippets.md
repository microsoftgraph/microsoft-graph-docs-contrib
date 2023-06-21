---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EducationAssignmentResource
{
	DistributeForStudentWork = false,
	Resource = new EducationTeamsAppResource
	{
		DisplayName = "Template - My Story",
		AppId = "6fbeb90c-3d55-4bd5-82c4-bfe824be4300",
		AppIconWebUrl = "https://statics.teams.cdn.office.net/evergreen-assets/ThirdPartyApps/6fbeb90c-3d55-4bd5-82c4-bfe824be4300_largeImage.png?v=2.0.2",
		TeamsEmbeddedContentUrl = "https://app.api.edu.buncee.com/player/C7B0866C9B7E485EAE21AE14DBC3FD08?embed=1&render_slide_panel=1",
		WebUrl = "https://app.edu.buncee.com/buncee/C7B0866C9B7E485EAE21AE14DBC3FD08",
		OdataType = "#microsoft.graph.educationTeamsAppResource",
	},
};
var result = await graphClient.Education.Classes["{educationClass-id}"].Assignments["{educationAssignment-id}"].Resources.PostAsync(requestBody);


```