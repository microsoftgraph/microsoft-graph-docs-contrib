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



graphClient.DirectoryRoles().ByDirectoryRoleId("directoryRole-id").Members().ByMemberId("directoryObject-id").Ref().Delete(context.Background(), nil)


```