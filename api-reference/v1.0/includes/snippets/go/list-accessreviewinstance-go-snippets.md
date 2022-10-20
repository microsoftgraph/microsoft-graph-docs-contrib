---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


result, err := graphClient.IdentityGovernance().AccessReviews().DefinitionsById("accessReviewScheduleDefinition-id").Instances().Get(context.Background(), nil)


```