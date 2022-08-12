---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAuthenticationMethodConfiguration()
"@odata.type" := "#microsoft.graph.microsoftAuthenticatorAuthenticationMethodConfiguration"
requestBody.Set"@odata.type"(&"@odata.type") 
state := graphmodels.STRING_AUTHENTICATIONMETHODSTATE 
requestBody.SetState(&state) 

graphClient.Policies().AuthenticationMethodsPolicy().AuthenticationMethodConfigurationsById("authenticationMethodConfiguration-id").Patch(requestBody)


```