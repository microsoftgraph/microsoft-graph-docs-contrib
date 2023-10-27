---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



items, err := graphClient.External().Connections().ByExternalConnectionId("externalConnection-id").Items().ByExternalItemId("externalItem-id").Get(context.Background(), nil)


```