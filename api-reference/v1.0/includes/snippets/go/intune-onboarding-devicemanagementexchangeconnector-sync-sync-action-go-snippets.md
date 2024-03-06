---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-sdk-go/devicemanagement"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdevicemanagement.NewSyncPostRequestBody()
syncType := graphmodels.DELTASYNC_DEVICEMANAGEMENTEXCHANGECONNECTORSYNCTYPE 
requestBody.SetSyncType(&syncType) 

graphClient.DeviceManagement().ExchangeConnectors().ByDeviceManagementExchangeConnectorId("deviceManagementExchangeConnector-id").Sync().Post(context.Background(), requestBody, nil)


```