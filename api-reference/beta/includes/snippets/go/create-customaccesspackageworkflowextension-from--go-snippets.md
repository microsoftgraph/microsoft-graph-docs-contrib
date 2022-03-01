---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewCustomAccessPackageWorkflowExtension()
displayName := "test_action_0124"
requestBody.SetDisplayName(&displayName)
description := "this is for graph testing only"
requestBody.SetDescription(&description)
endpointConfiguration := msgraphsdk.NewCustomExtensionEndpointConfiguration()
requestBody.SetEndpointConfiguration(endpointConfiguration)
endpointConfiguration.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.logicAppTriggerEndpointConfiguration",
	"subscriptionId": "38ab2ccc-3747-4567-b36b-9478f5602f0d",
	"resourceGroupName": "EMLogicApp",
	"logicAppWorkflowName": "customextension_test",
}
authenticationConfiguration := msgraphsdk.NewCustomExtensionAuthenticationConfiguration()
requestBody.SetAuthenticationConfiguration(authenticationConfiguration)
authenticationConfiguration.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.azureAdTokenAuthentication",
	"resourceId": "f604bd15-f785-4309-ad7c-6fad18ddb6cb",
}
options := &msgraphsdk.CustomAccessPackageWorkflowExtensionsRequestBuilderPostOptions{
	Body: requestBody,
}
accessPackageCatalogId := "accessPackageCatalog-id"
result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageCatalogsById(&accessPackageCatalogId).CustomAccessPackageWorkflowExtensions().Post(options)


```