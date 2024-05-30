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

requestBody := graphmodels.NewTargetDeviceGroup()
id := "b9e4eae4-b781-45a1-ce65-f2dd8ac3b696"
requestBody.SetId(&id) 
displayName := "Device Group A"
requestBody.SetDisplayName(&displayName) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
targetDeviceGroups, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").RemoteDesktopSecurityConfiguration().TargetDeviceGroups().Post(context.Background(), requestBody, nil)


```