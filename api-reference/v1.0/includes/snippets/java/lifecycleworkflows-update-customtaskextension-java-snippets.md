---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CustomTaskExtension customTaskExtension = new CustomTaskExtension();
customTaskExtension.displayName = "Grant manager access to mailbox and OneDrive";
customTaskExtension.description = "Grant manager access to mailbox and OneDrive";
LogicAppTriggerEndpointConfiguration endpointConfiguration = new LogicAppTriggerEndpointConfiguration();
endpointConfiguration.subscriptionId = "c500b67c-e9b7-4ad2-a90d-77d41385ae55";
endpointConfiguration.resourceGroupName = "RG-LCM";
endpointConfiguration.logicAppWorkflowName = "ManagerAccess";
customTaskExtension.endpointConfiguration = endpointConfiguration;
AzureAdPopTokenAuthentication authenticationConfiguration = new AzureAdPopTokenAuthentication();
customTaskExtension.authenticationConfiguration = authenticationConfiguration;
CustomExtensionClientConfiguration clientConfiguration = new CustomExtensionClientConfiguration();
clientConfiguration.maximumRetries = 1;
clientConfiguration.timeoutInMilliseconds = 1000;
customTaskExtension.clientConfiguration = clientConfiguration;
CustomTaskExtensionCallbackConfiguration callbackConfiguration = new CustomTaskExtensionCallbackConfiguration();
callbackConfiguration.timeoutDuration = DatatypeFactory.newInstance().newDuration("PT20M");
customTaskExtension.callbackConfiguration = callbackConfiguration;

graphClient.identityGovernance().lifecycleWorkflows().customTaskExtensions("ffcc4c85-5a14-448e-a390-77abf2700369")
	.buildRequest()
	.patch(customTaskExtension);

```