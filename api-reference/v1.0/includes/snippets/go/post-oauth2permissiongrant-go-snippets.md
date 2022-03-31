---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewOAuth2PermissionGrant()
clientId := "ef969797-201d-4f6b-960c-e9ed5f31dab5"
requestBody.SetClientId(&clientId)
consentType := "AllPrincipals"
requestBody.SetConsentType(&consentType)
resourceId := "943603e4-e787-4fe9-93d1-e30f749aae39"
requestBody.SetResourceId(&resourceId)
scope := "DelegatedPermissionGrant.ReadWrite.All"
requestBody.SetScope(&scope)
options := &msgraphsdk.Oauth2PermissionGrantsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Oauth2PermissionGrants().Post(options)


```