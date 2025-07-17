---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewApprovalItemResponse()
response := "Approve"
requestBody.SetResponse(&response) 
comments := "Approve this request"
requestBody.SetComments(&comments) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
responses, err := graphClient.Solutions().Approval().ApprovalItems().ByApprovalItemId("approvalItem-id").Responses().Post(context.Background(), requestBody, nil)


```