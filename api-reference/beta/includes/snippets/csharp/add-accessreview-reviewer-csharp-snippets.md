---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessReviewReviewer
{
	Id = "006111db-0810-4494-a6df-904d368bd81b",
};
var result = await graphClient.AccessReviews["{accessReview-id}"].Reviewers.PostAsync(requestBody);


```