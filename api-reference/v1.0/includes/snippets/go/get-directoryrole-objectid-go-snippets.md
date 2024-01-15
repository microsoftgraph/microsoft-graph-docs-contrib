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



directoryRoles, err := graphClient.DirectoryRoles().ByDirectoryRoleId("directoryRole-id").Get(context.Background(), nil)


```