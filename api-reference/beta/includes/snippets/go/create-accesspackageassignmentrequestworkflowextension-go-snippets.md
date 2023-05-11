---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCustomCalloutExtension()
displayName := "test_action_0124_email"
requestBody.SetDisplayName(&displayName) 
description := "this is for graph testing only"
requestBody.SetDescription(&description) 
endpointConfiguration := graphmodels.NewCustomExtensionEndpointConfiguration()
additionalData := map[string]interface{}{
	"subscriptionId" : "38ab2ccc-3747-4567-b36b-9478f5602f0d", 
	"resourceGroupName" : "test", 
	"logicAppWorkflowName" : "elm-extension-email", 
}
endpointConfiguration.SetAdditionalData(additionalData)
requestBody.SetEndpointConfiguration(endpointConfiguration)
authenticationConfiguration := graphmodels.NewCustomExtensionAuthenticationConfiguration()
requestBody.SetAuthenticationConfiguration(authenticationConfiguration)
additionalData := map[string]interface{}{
callbackConfiguration := graphmodels.New()
durationBeforeTimeout := "PT1H"
callbackConfiguration.SetDurationBeforeTimeout(&durationBeforeTimeout) 
	requestBody.SetCallbackConfiguration(callbackConfiguration)
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageCatalogs().ByAccessPackageCatalogId("accessPackageCatalog-id").AccessPackageCustomWorkflowExtensions().Post(context.Background(), requestBody, nil)


```