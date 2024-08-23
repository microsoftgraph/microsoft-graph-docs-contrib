---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentRequestWorkflowExtension customCalloutExtension = new AccessPackageAssignmentRequestWorkflowExtension();
customCalloutExtension.setOdataType("#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension");
customCalloutExtension.setDisplayName("test_action_0124_email");
customCalloutExtension.setDescription("this is for graph testing only");
LogicAppTriggerEndpointConfiguration endpointConfiguration = new LogicAppTriggerEndpointConfiguration();
endpointConfiguration.setOdataType("#microsoft.graph.logicAppTriggerEndpointConfiguration");
endpointConfiguration.setSubscriptionId("38ab2ccc-3747-4567-b36b-9478f5602f0d");
endpointConfiguration.setResourceGroupName("test");
endpointConfiguration.setLogicAppWorkflowName("elm-extension-email");
customCalloutExtension.setEndpointConfiguration(endpointConfiguration);
AzureAdPopTokenAuthentication authenticationConfiguration = new AzureAdPopTokenAuthentication();
authenticationConfiguration.setOdataType("#microsoft.graph.azureAdPopTokenAuthentication");
customCalloutExtension.setAuthenticationConfiguration(authenticationConfiguration);
CustomExtensionCallbackConfiguration callbackConfiguration = new CustomExtensionCallbackConfiguration();
callbackConfiguration.setOdataType("microsoft.graph.customExtensionCallbackConfiguration");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("durationBeforeTimeout", "PT1H");
callbackConfiguration.setAdditionalData(additionalData);
customCalloutExtension.setCallbackConfiguration(callbackConfiguration);
CustomCalloutExtension result = graphClient.identityGovernance().entitlementManagement().catalogs().byAccessPackageCatalogId("{accessPackageCatalog-id}").customWorkflowExtensions().post(customCalloutExtension);


```