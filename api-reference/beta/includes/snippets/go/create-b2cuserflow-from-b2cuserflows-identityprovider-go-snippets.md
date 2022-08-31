---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"Location": "https://graph.microsoft.com/beta/identity/b2cUserFlows('B2C_1_Customer')",
}
configuration := &graphconfig.B2cUserFlowsRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewB2cIdentityUserFlow()
id := "Customer"
requestBody.SetId(&id) 
userFlowType := graphmodels.SIGNUPORSIGNIN_USERFLOWTYPE 
requestBody.SetUserFlowType(&userFlowType) 
userFlowTypeVersion := float32(3)
requestBody.SetUserFlowTypeVersion(&userFlowTypeVersion) 


identityProvider := graphmodels.NewIdentityProvider()
id := "Facebook-OAuth"
identityProvider.SetId(&id) 

identityProviders := []graphmodels.IdentityProviderable {
	identityProvider,

}
requestBody.SetIdentityProviders(identityProviders)

result, err := graphClient.Identity().B2cUserFlows().PostWithRequestConfigurationAndResponseHandler(requestBody, configuration, nil)


```