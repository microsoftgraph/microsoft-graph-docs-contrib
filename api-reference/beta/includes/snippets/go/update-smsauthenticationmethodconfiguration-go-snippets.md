---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAuthenticationMethodConfiguration()
"@odata.type" := "#microsoft.graph.smsAuthenticationMethodConfiguration"
requestBody.Set"@odata.type"(&"@odata.type") 
id := "Sms"
requestBody.SetId(&id) 
state := graphmodels.ENABLED_AUTHENTICATIONMETHODSTATE 
requestBody.SetState(&state) 

graphClient.Policies().AuthenticationMethodsPolicy().AuthenticationMethodConfigurationsById("authenticationMethodConfiguration-id").Patch(requestBody)


```