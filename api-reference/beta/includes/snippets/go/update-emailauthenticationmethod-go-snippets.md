---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewEmailAuthenticationMethod()
emailAddress := "kim@contoso.com"
requestBody.SetEmailAddress(&emailAddress) 

emailMethods, err := graphClient.Users().ByUserId("user-id").Authentication().EmailMethods().ByEmailAuthenticationMethodId("emailAuthenticationMethod-id").Patch(context.Background(), requestBody, nil)


```