---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessReview
{
	DisplayName = "TestReview new name",
};
var result = await graphClient.AccessReviews["{accessReview-id}"].PatchAsync(requestBody);


```