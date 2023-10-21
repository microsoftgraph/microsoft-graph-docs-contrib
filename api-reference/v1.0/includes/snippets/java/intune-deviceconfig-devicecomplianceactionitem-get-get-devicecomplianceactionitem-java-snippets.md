---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceComplianceActionItem deviceComplianceActionItem = graphClient.deviceManagement().deviceCompliancePolicies("{deviceCompliancePolicyId}").scheduledActionsForRule("{deviceComplianceScheduledActionForRuleId}").scheduledActionConfigurations("{deviceComplianceActionItemId}")
	.buildRequest()
	.get();

```