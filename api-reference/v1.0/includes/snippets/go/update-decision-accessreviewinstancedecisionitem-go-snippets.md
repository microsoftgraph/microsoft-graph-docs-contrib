---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAccessReviewInstanceDecisionItem()
decision := "Approve"
requestBody.SetDecision(&decision) 
justification := "This person is still on my team"
requestBody.SetJustification(&justification) 

result, err := graphClient.IdentityGovernance().AccessReviews().DefinitionsById("accessReviewScheduleDefinition-id").InstancesById("accessReviewInstance-id").StagesById("accessReviewStage-id").DecisionsById("accessReviewInstanceDecisionItem-id").Patch(context.Background(), requestBody, nil)


```