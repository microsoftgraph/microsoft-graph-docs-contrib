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



remoteAssistancePartners, err := graphClient.DeviceManagement().RemoteAssistancePartners().ByRemoteAssistancePartnerId("remoteAssistancePartner-id").Get(context.Background(), nil)


```