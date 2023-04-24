---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EducationAssignmentResource
{
	DistributeForStudentWork = false,
	Resource = new EducationResource
	{
		DisplayName = "Where the Wonders of Learning Never Cease | Wonderopolis",
		OdataType = "#microsoft.graph.educationLinkResource",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"link" , "https://wonderopolis.org/"
			},
			{
				"thumbnailPreviewUrl" , null
			},
		},
	},
};
var result = await graphClient.Education.Classes["{educationClass-id}"].Assignments["{educationAssignment-id}"].Resources.PostAsync(requestBody);


```