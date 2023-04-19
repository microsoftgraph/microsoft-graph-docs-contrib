---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCloudPcExternalPartnerSetting()
partnerId := "198d7140-80bb-4843-8cc4-811377a49a92"
requestBody.SetPartnerId(&partnerId) 
enableConnection := true
requestBody.SetEnableConnection(&enableConnection) 

result, err := graphClient.DeviceManagement().VirtualEndpoint().ExternalPartnerSettings().Post(context.Background(), requestBody, nil)


```