---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewOAuth2PermissionGrant()
scope := "User.ReadBasic.All Group.ReadWrite.All"
requestBody.SetScope(&scope) 

result, err := graphClient.Oauth2PermissionGrantsById("oAuth2PermissionGrant-id").Patch(context.Background(), requestBody, nil)


```