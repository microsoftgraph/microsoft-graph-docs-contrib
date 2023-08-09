---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AuthoredNote
{
	Content = new ItemBody
	{
		Content = "String",
		ContentType = BodyType.Text,
	},
};
var result = await graphClient.Privacy.SubjectRightsRequests["{subjectRightsRequest-id}"].Notes.PostAsync(requestBody);


```