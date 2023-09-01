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



directoryRoleTemplates, err := graphClient.DirectoryRoleTemplates().ByDirectoryRoleTemplateId("directoryRoleTemplate-id").Get(context.Background(), nil)


```