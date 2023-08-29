---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


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

stages, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentApprovals().ByApprovalId("approval-id").Stages().ByApprovalStageId("approvalStage-id").Patch(context.Background(), requestBody, nil)


```