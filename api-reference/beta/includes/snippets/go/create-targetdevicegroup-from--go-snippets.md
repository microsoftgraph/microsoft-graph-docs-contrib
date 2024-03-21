---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewTargetDeviceGroup()
id := "b9e4eae4-b781-45a1-ce65-f2dd8ac3b696"
requestBody.SetId(&id) 
displayName := "Device Group A"
requestBody.SetDisplayName(&displayName) 

targetDeviceGroups, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").RemoteDesktopSecurityConfiguration().TargetDeviceGroups().Post(context.Background(), requestBody, nil)


```