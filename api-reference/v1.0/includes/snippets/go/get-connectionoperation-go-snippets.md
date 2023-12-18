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



operations, err := graphClient.External().Connections().ByExternalConnectionId("externalConnection-id").Operations().ByConnectionOperationId("connectionOperation-id").Get(context.Background(), nil)


```