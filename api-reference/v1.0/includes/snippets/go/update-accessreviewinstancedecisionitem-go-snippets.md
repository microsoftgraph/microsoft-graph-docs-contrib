---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAccessReviewInstanceDecisionItem()
decision := "Approve"
requestBody.SetDecision(&decision) 
justification := "Kathleen still needs access to the Marketing group as she works in the Marketing organization."
requestBody.SetJustification(&justification) 

graphClient.IdentityGovernance().AccessReviews().DefinitionsById("accessReviewScheduleDefinition-id").InstancesById("accessReviewInstance-id").DecisionsById("accessReviewInstanceDecisionItem-id").Patch(requestBody)


```