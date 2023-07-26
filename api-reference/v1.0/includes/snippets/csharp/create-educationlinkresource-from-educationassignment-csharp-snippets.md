---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EducationAssignmentResource
{
	DistributeForStudentWork = false,
	Resource = new EducationLinkResource
	{
		DisplayName = "Where the Wonders of Learning Never Cease | Wonderopolis",
		Link = "https://wonderopolis.org/",
		OdataType = "#microsoft.graph.educationLinkResource",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"thumbnailPreviewUrl" , null
			},
		},
	},
};
var result = await graphClient.Education.Classes["{educationClass-id}"].Assignments["{educationAssignment-id}"].Resources.PostAsync(requestBody);


```