---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/devicemanagement"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphdevicemanagement.NewOrganizationActionPostRequestBody()
actionType := graphmodels.ACTIVATE_CLOUDPCORGANIZATIONACTIONTYPE 
requestBody.SetActionType(&actionType) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
organizationAction, err := graphClient.DeviceManagement().VirtualEndpoint().OrganizationAction().Post(context.Background(), requestBody, nil)


```