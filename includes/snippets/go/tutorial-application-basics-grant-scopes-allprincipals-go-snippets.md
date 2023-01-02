---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewOAuth2PermissionGrant()
clientId := "b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94"
requestBody.SetClientId(&clientId) 
consentType := "AllPrincipal"
requestBody.SetConsentType(&consentType) 
resourceId := "7ea9e944-71ce-443d-811c-71e8047b557a"
requestBody.SetResourceId(&resourceId) 
scope := "User.Read.All Group.Read.All"
requestBody.SetScope(&scope) 

result, err := graphClient.Oauth2PermissionGrants().Post(context.Background(), requestBody, nil)


```