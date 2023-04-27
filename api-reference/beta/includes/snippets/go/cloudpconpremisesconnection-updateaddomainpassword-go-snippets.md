---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/DeviceManagement/VirtualEndpoint/OnPremisesConnections/Item/UpdateAdDomainPassword"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUpdateAdDomainPasswordPostRequestBody()
adDomainPassword := "AdDomainPassword value"
requestBody.SetAdDomainPassword(&adDomainPassword) 

graphClient.DeviceManagement().VirtualEndpoint().OnPremisesConnections().ByOnPremisesConnectionId("cloudPcOnPremisesConnection-id").UpdateAdDomainPassword().Post(context.Background(), requestBody, nil)


```