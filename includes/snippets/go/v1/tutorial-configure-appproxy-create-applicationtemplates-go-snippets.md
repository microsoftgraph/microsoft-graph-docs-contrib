---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphapplicationtemplates "github.com/microsoftgraph/msgraph-sdk-go/applicationtemplates"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphapplicationtemplates.NewInstantiatePostRequestBody()
displayName := "Contoso IWA App"
requestBody.SetDisplayName(&displayName) 

instantiate, err := graphClient.ApplicationTemplates().ByApplicationTemplateId("applicationTemplate-id").Instantiate().Post(context.Background(), requestBody, nil)


```