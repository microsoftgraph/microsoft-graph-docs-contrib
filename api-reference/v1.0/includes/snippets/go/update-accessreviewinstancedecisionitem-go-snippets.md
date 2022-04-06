---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAccessReviewInstanceDecisionItem()
decision := "Approve"
requestBody.SetDecision(&decision)
justification := "Kathleen still needs access to the Marketing group as she works in the Marketing organization."
requestBody.SetJustification(&justification)
options := &msgraphsdk.AccessReviewInstanceDecisionItemRequestBuilderPatchOptions{
	Body: requestBody,
}
accessReviewScheduleDefinitionId := "accessReviewScheduleDefinition-id"
accessReviewInstanceId := "accessReviewInstance-id"
accessReviewInstanceDecisionItemId := "accessReviewInstanceDecisionItem-id"
graphClient.IdentityGovernance().AccessReviews().DefinitionsById(&accessReviewScheduleDefinitionId).InstancesById(&accessReviewInstanceId).DecisionsById(&accessReviewInstanceDecisionItemId).Patch(options)


```