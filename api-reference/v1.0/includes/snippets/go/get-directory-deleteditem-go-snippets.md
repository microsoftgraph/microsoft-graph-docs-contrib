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



deletedItems, err := graphClient.Directory().DeletedItems().ByDirectoryObjectId("directoryObject-id").Get(context.Background(), nil)


```