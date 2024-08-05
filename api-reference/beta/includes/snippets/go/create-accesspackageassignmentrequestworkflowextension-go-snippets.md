---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewCustomCalloutExtension()
displayName := "test_action_0124_email"
requestBody.SetDisplayName(&displayName) 
description := "this is for graph testing only"
requestBody.SetDescription(&description) 
endpointConfiguration := graphmodels.NewLogicAppTriggerEndpointConfiguration()
subscriptionId := "38ab2ccc-3747-4567-b36b-9478f5602f0d"
endpointConfiguration.SetSubscriptionId(&subscriptionId) 
resourceGroupName := "test"
endpointConfiguration.SetResourceGroupName(&resourceGroupName) 
logicAppWorkflowName := "elm-extension-email"
endpointConfiguration.SetLogicAppWorkflowName(&logicAppWorkflowName) 
requestBody.SetEndpointConfiguration(endpointConfiguration)
authenticationConfiguration := graphmodels.NewAzureAdPopTokenAuthentication()
requestBody.SetAuthenticationConfiguration(authenticationConfiguration)
callbackConfiguration := graphmodels.NewCustomExtensionCallbackConfiguration()
additionalData := map[string]interface{}{
	"durationBeforeTimeout" : "PT1H", 
}
callbackConfiguration.SetAdditionalData(additionalData)
requestBody.SetCallbackConfiguration(callbackConfiguration)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
accessPackageCustomWorkflowExtensions, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageCatalogs().ByAccessPackageCatalogId("accessPackageCatalog-id").AccessPackageCustomWorkflowExtensions().Post(context.Background(), requestBody, nil)


```