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



messages, err := graphClient.Me().MailFolders().ByMailFolderId("mailFolder-id").Messages().Get(context.Background(), nil)


```