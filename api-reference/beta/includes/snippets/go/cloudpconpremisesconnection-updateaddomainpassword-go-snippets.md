---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/devicemanagement"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdevicemanagement.NewUpdateAdDomainPasswordPostRequestBody()
adDomainPassword := "AdDomainPassword value"
requestBody.SetAdDomainPassword(&adDomainPassword) 

graphClient.DeviceManagement().VirtualEndpoint().OnPremisesConnections().ByOnPremisesConnectionId("cloudPcOnPremisesConnection-id").UpdateAdDomainPassword().Post(context.Background(), requestBody, nil)


```