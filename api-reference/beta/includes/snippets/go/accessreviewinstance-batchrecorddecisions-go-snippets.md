---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Me/PendingAccessReviewInstances/Item/BatchRecordDecisions"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewBatchRecordDecisionsPostRequestBody()
decision := "Approve"
requestBody.SetDecision(&decision) 
justification := "All principals with access need continued access to the resource (Marketing Group) as all the principals are on the marketing team"
requestBody.SetJustification(&justification) 
resourceId := "a5c51e59-3fcd-4a37-87a1-835c0c21488a"
requestBody.SetResourceId(&resourceId) 

graphClient.Me().PendingAccessReviewInstances().ByPendingAccessReviewInstanceId("accessReviewInstance-id").BatchRecordDecisions().Post(context.Background(), requestBody, nil)


```