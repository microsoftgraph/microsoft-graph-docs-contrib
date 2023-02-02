---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewOAuth2PermissionGrant()
scope := "User.Read.All"
requestBody.SetScope(&scope) 

result, err := graphClient.Oauth2PermissionGrantsById("oAuth2PermissionGrant-id").Patch(context.Background(), requestBody, nil)


```