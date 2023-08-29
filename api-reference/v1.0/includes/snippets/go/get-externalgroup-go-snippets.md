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



groups, err := graphClient.External().Connections().ByExternalConnectionId("externalConnection-id").Groups().ByExternalGroupId("externalGroup-id").Get(context.Background(), nil)


```