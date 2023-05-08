---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewEmailAuthenticationMethod()
emailAddress := "kim@contoso.com"
requestBody.SetEmailAddress(&emailAddress) 

result, err := graphClient.Users().ByUserId("user-id").Authentication().EmailMethods().Post(context.Background(), requestBody, nil)


```