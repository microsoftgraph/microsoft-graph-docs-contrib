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



restore, err := graphClient.Directory().DeletedItems().ByDirectoryObjectId("directoryObject-id").Restore().Post(context.Background(), nil)


```