---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CustomAccessPackageWorkflowExtension customAccessPackageWorkflowExtension = new CustomAccessPackageWorkflowExtension();
customAccessPackageWorkflowExtension.displayName = "test_action_0124";
customAccessPackageWorkflowExtension.description = "this is for graph testing only";
LogicAppTriggerEndpointConfiguration endpointConfiguration = new LogicAppTriggerEndpointConfiguration();
endpointConfiguration.subscriptionId = "38ab2ccc-3747-4567-b36b-9478f5602f0d";
endpointConfiguration.resourceGroupName = "EMLogicApp";
endpointConfiguration.logicAppWorkflowName = "customextension_test";
customAccessPackageWorkflowExtension.endpointConfiguration = endpointConfiguration;
AzureAdTokenAuthentication authenticationConfiguration = new AzureAdTokenAuthentication();
authenticationConfiguration.resourceId = "f604bd15-f785-4309-ad7c-6fad18ddb6cb";
customAccessPackageWorkflowExtension.authenticationConfiguration = authenticationConfiguration;

graphClient.identityGovernance().entitlementManagement().accessPackageCatalogs("32efb28c-9a7a-446c-986b-ca6528c6669d").customAccessPackageWorkflowExtensions()
	.buildRequest()
	.post(customAccessPackageWorkflowExtension);

```