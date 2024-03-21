---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CustomAccessPackageWorkflowExtension customAccessPackageWorkflowExtension = new CustomAccessPackageWorkflowExtension();
customAccessPackageWorkflowExtension.setDisplayName("test_action_0124");
customAccessPackageWorkflowExtension.setDescription("this is for graph testing only");
LogicAppTriggerEndpointConfiguration endpointConfiguration = new LogicAppTriggerEndpointConfiguration();
endpointConfiguration.setOdataType("#microsoft.graph.logicAppTriggerEndpointConfiguration");
endpointConfiguration.setSubscriptionId("38ab2ccc-3747-4567-b36b-9478f5602f0d");
endpointConfiguration.setResourceGroupName("EMLogicApp");
endpointConfiguration.setLogicAppWorkflowName("customextension_test");
customAccessPackageWorkflowExtension.setEndpointConfiguration(endpointConfiguration);
AzureAdTokenAuthentication authenticationConfiguration = new AzureAdTokenAuthentication();
authenticationConfiguration.setOdataType("#microsoft.graph.azureAdTokenAuthentication");
authenticationConfiguration.setResourceId("f604bd15-f785-4309-ad7c-6fad18ddb6cb");
customAccessPackageWorkflowExtension.setAuthenticationConfiguration(authenticationConfiguration);
CustomAccessPackageWorkflowExtension result = graphClient.identityGovernance().entitlementManagement().accessPackageCatalogs().byAccessPackageCatalogId("{accessPackageCatalog-id}").customAccessPackageWorkflowExtensions().post(customAccessPackageWorkflowExtension);


```