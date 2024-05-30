---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewResourceOperation()
resourceName := "Resource Name value"
requestBody.SetResourceName(&resourceName) 
actionName := "Action Name value"
requestBody.SetActionName(&actionName) 
description := "Description value"
requestBody.SetDescription(&description) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
resourceOperations, err := graphClient.DeviceManagement().ResourceOperations().ByResourceOperationId("resourceOperation-id").Patch(context.Background(), requestBody, nil)


```