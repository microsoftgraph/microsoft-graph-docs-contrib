---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewUpdatePasswordSingleSignOnCredentialsPostRequestBody()
id := "5793aa3b-cca9-4794-679a240f8b58"
requestBody.SetId(&id) 


credential := graphmodels.NewCredential()
additionalData := map[string]interface{}{
	"fieldId" : "param_username", 
	"value" : "myusername", 
	"type" : "username", 
}
credential.SetAdditionalData(additionalData)
credential1 := graphmodels.NewCredential()
additionalData := map[string]interface{}{
	"fieldId" : "param_password", 
	"value" : "pa$$w0rd", 
	"type" : "password", 
}
credential1.SetAdditionalData(additionalData)

credentials := []graphmodels.Credentialable {
	credential,
	credential1,

}
requestBody.SetCredentials(credentials)

graphClient.ServicePrincipalsById("servicePrincipal-id").UpdatePasswordSingleSignOnCredentials().Post(requestBody)


```