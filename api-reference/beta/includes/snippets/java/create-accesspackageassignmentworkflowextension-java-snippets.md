---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CustomCalloutExtension customCalloutExtension = new CustomCalloutExtension();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
AccessPackageAssignmentWorkflowExtension value = new AccessPackageAssignmentWorkflowExtension();
value.setOdataType("#microsoft.graph.accessPackageAssignmentWorkflowExtension");
value.setDisplayName("test_action_0127_email");
value.setDescription("this is for graph testing only");
LogicAppTriggerEndpointConfiguration endpointConfiguration = new LogicAppTriggerEndpointConfiguration();
endpointConfiguration.setOdataType("#microsoft.graph.logicAppTriggerEndpointConfiguration");
endpointConfiguration.setSubscriptionId("38ab2ccc-3747-4567-b36b-9478f5602f0d");
endpointConfiguration.setResourceGroupName("test");
endpointConfiguration.setLogicAppWorkflowName("elm-extension-email");
value.setEndpointConfiguration(endpointConfiguration);
AzureAdPopTokenAuthentication authenticationConfiguration = new AzureAdPopTokenAuthentication();
authenticationConfiguration.setOdataType("#microsoft.graph.azureAdPopTokenAuthentication");
value.setAuthenticationConfiguration(authenticationConfiguration);
additionalData.put("value", value);
customCalloutExtension.setAdditionalData(additionalData);
CustomCalloutExtension result = graphClient.identityGovernance().entitlementManagement().accessPackageCatalogs().byAccessPackageCatalogId("{accessPackageCatalog-id}").accessPackageCustomWorkflowExtensions().post(customCalloutExtension);


```