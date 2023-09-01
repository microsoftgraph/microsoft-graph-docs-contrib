---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


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
endpointConfiguration := graphmodels.NewLogicAppTriggerEndpointConfiguration()
subscriptionId := "38ab2ccc-3747-4567-b36b-9478f5602f0d"
endpointConfiguration.SetSubscriptionId(&subscriptionId) 
resourceGroupName := "EMLogicApp"
endpointConfiguration.SetResourceGroupName(&resourceGroupName) 
logicAppWorkflowName := "customextension_test"
endpointConfiguration.SetLogicAppWorkflowName(&logicAppWorkflowName) 
requestBody.SetEndpointConfiguration(endpointConfiguration)
authenticationConfiguration := graphmodels.NewAzureAdTokenAuthentication()
resourceId := "f604bd15-f785-4309-ad7c-6fad18ddb6cb"
authenticationConfiguration.SetResourceId(&resourceId) 
requestBody.SetAuthenticationConfiguration(authenticationConfiguration)

customAccessPackageWorkflowExtensions, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageCatalogs().ByAccessPackageCatalogId("accessPackageCatalog-id").CustomAccessPackageWorkflowExtensions().Post(context.Background(), requestBody, nil)


```