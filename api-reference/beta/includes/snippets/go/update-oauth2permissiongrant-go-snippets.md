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


requestBody := graphmodels.NewOAuth2PermissionGrant()
scope := "User.ReadBasic.All Group.ReadWrite.All"
requestBody.SetScope(&scope) 

oauth2PermissionGrants, err := graphClient.Oauth2PermissionGrants().ByOAuth2PermissionGrantId("oAuth2PermissionGrant-id").Patch(context.Background(), requestBody, nil)


```