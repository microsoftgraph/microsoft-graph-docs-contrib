---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewOAuth2PermissionGrant()
scope := "User.ReadBasic.All Group.ReadWrite.All"
requestBody.SetScope(&scope) 

graphClient.Oauth2PermissionGrantsById("oAuth2PermissionGrant-id").Patch(context.Background(), requestBody, nil)


```