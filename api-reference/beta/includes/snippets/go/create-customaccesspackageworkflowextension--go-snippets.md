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


requestBody := graphmodels.NewCustomAccessPackageWorkflowExtension()
displayName := "test_action_0124"
requestBody.SetDisplayName(&displayName) 
description := "this is for graph testing only"
requestBody.SetDescription(&description) 
endpointConfiguration := graphmodels.NewCustomExtensionEndpointConfiguration()
additionalData := map[string]interface{}{
	"subscriptionId" : "38ab2ccc-3747-4567-b36b-9478f5602f0d", 
	"resourceGroupName" : "EMLogicApp", 
	"logicAppWorkflowName" : "customextension_test", 
}
endpointConfiguration.SetAdditionalData(additionalData)
requestBody.SetEndpointConfiguration(endpointConfiguration)
authenticationConfiguration := graphmodels.NewCustomExtensionAuthenticationConfiguration()
additionalData := map[string]interface{}{
	"resourceId" : "f604bd15-f785-4309-ad7c-6fad18ddb6cb", 
}
authenticationConfiguration.SetAdditionalData(additionalData)
requestBody.SetAuthenticationConfiguration(authenticationConfiguration)

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageCatalogs().ByAccessPackageCatalogId("accessPackageCatalog-id").CustomAccessPackageWorkflowExtensions().Post(context.Background(), requestBody, nil)


```