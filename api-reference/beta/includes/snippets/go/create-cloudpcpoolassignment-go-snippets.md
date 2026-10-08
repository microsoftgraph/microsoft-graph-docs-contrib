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

requestBody := graphmodels.NewCloudPcPoolAssignment()
userPrincipalId := "f6a7b8c9-d0e1-2345-f678-901234567890"
requestBody.SetUserPrincipalId(&userPrincipalId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
assignments, err := graphClient.DeviceManagement().VirtualEndpoint().CloudPcPools().ByCloudPcPoolId("cloudPcPool-id").Assignments().Post(context.Background(), requestBody, nil)


```