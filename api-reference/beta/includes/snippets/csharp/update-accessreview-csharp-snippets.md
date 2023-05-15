---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessReview
{
	DisplayName = "TestReview new name",
};
var result = await graphClient.AccessReviews["{accessReview-id}"].PatchAsync(requestBody);


```