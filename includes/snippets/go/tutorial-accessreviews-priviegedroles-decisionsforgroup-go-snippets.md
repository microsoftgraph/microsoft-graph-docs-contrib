---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/IdentityGovernance/AccessReviews/Definitions/Item/Instances/Item/Decisions/Item"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewDecision()
additionalData := map[string]interface{}{
	"decision" : "Approve", 
	"justification" : "The IT Helpdesk requires continued access to the User Administrator role to manage user account support requests, lifecycle, and access to resources", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.IdentityGovernance().AccessReviews().Definitions().ByDefinitionId("accessReviewScheduleDefinition-id").Instances().ByInstanceId("accessReviewInstance-id").Decisions().ByDecisionId("accessReviewInstanceDecisionItem-id").Post(context.Background(), requestBody, nil)


```