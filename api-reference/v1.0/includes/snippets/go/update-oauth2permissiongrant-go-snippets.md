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


requestBody := graphmodels.NewOAuth2PermissionGrant()
scope := "User.ReadBasic.All Group.ReadWrite.All"
requestBody.SetScope(&scope) 

result, err := graphClient.Oauth2PermissionGrants().ByOauth2PermissionGrantId("oAuth2PermissionGrant-id").Patch(context.Background(), requestBody, nil)


```