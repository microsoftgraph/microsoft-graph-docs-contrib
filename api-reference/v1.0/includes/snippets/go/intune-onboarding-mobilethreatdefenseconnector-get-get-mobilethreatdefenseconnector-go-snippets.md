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



mobileThreatDefenseConnectors, err := graphClient.DeviceManagement().MobileThreatDefenseConnectors().ByMobileThreatDefenseConnectorId("mobileThreatDefenseConnector-id").Get(context.Background(), nil)


```