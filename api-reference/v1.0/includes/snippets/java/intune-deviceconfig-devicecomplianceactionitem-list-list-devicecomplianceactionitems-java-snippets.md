---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceComplianceActionItemCollectionPage scheduledActionConfigurations = graphClient.deviceManagement().deviceCompliancePolicies("{deviceCompliancePolicyId}").scheduledActionsForRule("{deviceComplianceScheduledActionForRuleId}").scheduledActionConfigurations()
	.buildRequest()
	.get();

```