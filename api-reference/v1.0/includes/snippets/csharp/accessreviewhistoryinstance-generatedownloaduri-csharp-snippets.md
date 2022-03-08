---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.IdentityGovernance.AccessReviews.HistoryDefinitions["{accessReviewHistoryDefinition-id}"].Instances["{accessReviewHistoryInstance-id}"]
	.GenerateDownloadUri()
	.Request()
	.PostAsync();

```