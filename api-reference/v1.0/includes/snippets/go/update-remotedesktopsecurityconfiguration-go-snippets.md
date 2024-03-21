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


requestBody := graphmodels.NewRemoteDesktopSecurityConfiguration()
isRemoteDesktopProtocolEnabled := true
requestBody.SetIsRemoteDesktopProtocolEnabled(&isRemoteDesktopProtocolEnabled) 

remoteDesktopSecurityConfiguration, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").RemoteDesktopSecurityConfiguration().Patch(context.Background(), requestBody, nil)


```