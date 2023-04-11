---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewApprovalStage()
reviewResult := "Approve"
requestBody.SetReviewResult(&reviewResult) 
justification := "OK"
requestBody.SetJustification(&justification) 

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentApprovalsById("approval-id").StagesById("approvalStage-id").Patch(context.Background(), requestBody, nil)


```