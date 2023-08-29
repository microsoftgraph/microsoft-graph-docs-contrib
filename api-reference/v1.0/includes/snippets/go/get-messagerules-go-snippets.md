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



messageRules, err := graphClient.Me().MailFolders().ByMailFolderId("mailFolder-id").MessageRules().Get(context.Background(), nil)


```