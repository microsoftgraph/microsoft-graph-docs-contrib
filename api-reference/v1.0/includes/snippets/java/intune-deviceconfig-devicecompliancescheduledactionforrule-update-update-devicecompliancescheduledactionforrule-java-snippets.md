---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceComplianceScheduledActionForRule deviceComplianceScheduledActionForRule = new DeviceComplianceScheduledActionForRule();
deviceComplianceScheduledActionForRule.ruleName = "Rule Name value";

graphClient.deviceManagement().deviceCompliancePolicies("{deviceCompliancePolicyId}").scheduledActionsForRule("{deviceComplianceScheduledActionForRuleId}")
	.buildRequest()
	.patch(deviceComplianceScheduledActionForRule);

```