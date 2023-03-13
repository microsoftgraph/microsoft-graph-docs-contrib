---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewDecision()
additionalData := map[string]interface{}{
	"decision" : "Approve", 
	"justification" : "The IT Helpdesk requires continued access to the User Administrator role to manage user account support requests, lifecycle, and access to resources", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.IdentityGovernance().AccessReviews().DefinitionsById("accessReviewScheduleDefinition-id").InstancesById("accessReviewInstance-id").DecisionsById("accessReviewInstanceDecisionItem-id").Post(context.Background(), requestBody, nil)


```