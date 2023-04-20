---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewDirectoryRole()
roleTemplateId := "fe930be7-5e62-47db-91af-98c3a49a38b1"
requestBody.SetRoleTemplateId(&roleTemplateId) 

result, err := graphClient.DirectoryRoles().Post(context.Background(), requestBody, nil)


```