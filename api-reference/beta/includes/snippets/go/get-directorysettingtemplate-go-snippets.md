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



directorySettingTemplates, err := graphClient.DirectorySettingTemplates().ByDirectorySettingTemplateId("directorySettingTemplate-id").Get(context.Background(), nil)


```