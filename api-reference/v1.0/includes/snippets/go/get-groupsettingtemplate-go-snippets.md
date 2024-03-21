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



groupSettingTemplates, err := graphClient.GroupSettingTemplates().ByGroupSettingTemplateId("groupSettingTemplate-id").Get(context.Background(), nil)


```