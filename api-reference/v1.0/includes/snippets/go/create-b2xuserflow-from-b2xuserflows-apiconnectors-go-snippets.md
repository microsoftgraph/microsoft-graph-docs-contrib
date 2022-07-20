---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewB2xIdentityUserFlow()
id := "UserFlowWithAPIConnector"
requestBody.SetId(&id) 
userFlowType := graphmodels.SIGNUPORSIGNIN_USERFLOWTYPE 
requestBody.SetUserFlowType(&userFlowType) 
userFlowTypeVersion := float32(1)
requestBody.SetUserFlowTypeVersion(&userFlowTypeVersion) 
apiConnectorConfiguration := graphmodels.NewUserFlowApiConnectorConfiguration()
postFederationSignup := graphmodels.NewpostFederationSignup()
additionalData := map[string]interface{}{
	"@odata.id" : "https://graph.microsoft.com/v1/identity/apiConnectors/{id}", 
}
postFederationSignup.SetAdditionalData(additionalData)
apiConnectorConfiguration.SetPostFederationSignup(postFederationSignup)
postAttributeCollection := graphmodels.NewpostAttributeCollection()
additionalData := map[string]interface{}{
	"@odata.id" : "https://graph.microsoft.com/v1/identity/apiConnectors/{id}", 
}
postAttributeCollection.SetAdditionalData(additionalData)
apiConnectorConfiguration.SetPostAttributeCollection(postAttributeCollection)
requestBody.SetApiConnectorConfiguration(apiConnectorConfiguration)

result, err := graphClient.Identity().B2xUserFlows().Post(requestBody)


```