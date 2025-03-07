---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.identitygovernance.CustomTaskExtension customTaskExtension = new com.microsoft.graph.models.identitygovernance.CustomTaskExtension();
customTaskExtension.setDisplayName("Grant manager access to mailbox and OneDrive");
customTaskExtension.setDescription("Grant manager access to mailbox and OneDrive");
LogicAppTriggerEndpointConfiguration endpointConfiguration = new LogicAppTriggerEndpointConfiguration();
endpointConfiguration.setOdataType("#microsoft.graph.logicAppTriggerEndpointConfiguration");
endpointConfiguration.setSubscriptionId("c500b67c-e9b7-4ad2-a90d-77d41385ae55");
endpointConfiguration.setResourceGroupName("RG-LCM");
endpointConfiguration.setLogicAppWorkflowName("ManagerAccess");
customTaskExtension.setEndpointConfiguration(endpointConfiguration);
AzureAdTokenAuthentication authenticationConfiguration = new AzureAdTokenAuthentication();
authenticationConfiguration.setOdataType("#microsoft.graph.azureAdTokenAuthentication");
authenticationConfiguration.setResourceId("542dc01a-0b5d-4edc-b3f9-5cfe6393f557");
customTaskExtension.setAuthenticationConfiguration(authenticationConfiguration);
CustomExtensionClientConfiguration clientConfiguration = new CustomExtensionClientConfiguration();
clientConfiguration.setOdataType("#microsoft.graph.customExtensionClientConfiguration");
clientConfiguration.setMaximumRetries(1);
clientConfiguration.setTimeoutInMilliseconds(1000);
customTaskExtension.setClientConfiguration(clientConfiguration);
com.microsoft.graph.models.identitygovernance.CustomTaskExtensionCallbackConfiguration callbackConfiguration = new com.microsoft.graph.models.identitygovernance.CustomTaskExtensionCallbackConfiguration();
callbackConfiguration.setOdataType("#microsoft.graph.identityGovernance.customTaskExtensionCallbackConfiguration");
PeriodAndDuration timeoutDuration = PeriodAndDuration.ofDuration(Duration.parse("PT5M"));
callbackConfiguration.setTimeoutDuration(timeoutDuration);
customTaskExtension.setCallbackConfiguration(callbackConfiguration);
com.microsoft.graph.models.identitygovernance.CustomTaskExtension result = graphClient.identityGovernance().lifecycleWorkflows().customTaskExtensions().post(customTaskExtension);


```