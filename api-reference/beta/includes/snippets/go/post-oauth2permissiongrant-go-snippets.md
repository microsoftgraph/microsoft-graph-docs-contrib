---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewOAuth2PermissionGrant()
clientId := "clientId-value"
requestBody.SetClientId(&clientId)
consentType := "consentType-value"
requestBody.SetConsentType(&consentType)
principalId := "principalId-value"
requestBody.SetPrincipalId(&principalId)
resourceId := "resourceId-value"
requestBody.SetResourceId(&resourceId)
scope := "scope-value"
requestBody.SetScope(&scope)
startTime, err := time.Parse(time.RFC3339, "2016-10-19T10:37:00Z")
requestBody.SetStartTime(&startTime)
expiryTime, err := time.Parse(time.RFC3339, "2016-10-19T10:37:00Z")
requestBody.SetExpiryTime(&expiryTime)
options := &msgraphsdk.Oauth2PermissionGrantsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Oauth2PermissionGrants().Post(options)


```