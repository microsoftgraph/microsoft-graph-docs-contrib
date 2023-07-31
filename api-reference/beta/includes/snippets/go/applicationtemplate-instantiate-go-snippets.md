---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphapplicationtemplates "github.com/microsoftgraph/msgraph-beta-sdk-go/applicationtemplates"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphapplicationtemplates.NewInstantiatePostRequestBody()
displayName := "testProperties"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.ApplicationTemplates().ByApplicationTemplateId("applicationTemplate-id").Instantiate().Post(context.Background(), requestBody, nil)


```