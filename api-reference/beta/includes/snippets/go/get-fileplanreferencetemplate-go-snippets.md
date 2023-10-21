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



filePlanReferences, err := graphClient.Security().Labels().FilePlanReferences().ByFilePlanReferenceTemplateId("filePlanReferenceTemplate-id").Get(context.Background(), nil)


```