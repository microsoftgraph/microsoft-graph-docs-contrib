---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



exchangeConnectors, err := graphClient.DeviceManagement().ExchangeConnectors().ByDeviceManagementExchangeConnectorId("deviceManagementExchangeConnector-id").Get(context.Background(), nil)


```