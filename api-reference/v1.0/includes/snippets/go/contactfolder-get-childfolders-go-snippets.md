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



childFolders, err := graphClient.Me().ContactFolders().ByContactFolderId("contactFolder-id").ChildFolders().Get(context.Background(), nil)


```