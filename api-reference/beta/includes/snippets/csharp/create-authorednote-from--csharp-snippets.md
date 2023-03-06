---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AuthoredNote
{
	Content = new ItemBody
	{
		Content = "Please take a look at the files tagged with follow up",
		ContentType = BodyType.Text,
	},
};
var result = await graphClient.Privacy.SubjectRightsRequests["{subjectRightsRequest-id}"].Notes.PostAsync(requestBody);


```