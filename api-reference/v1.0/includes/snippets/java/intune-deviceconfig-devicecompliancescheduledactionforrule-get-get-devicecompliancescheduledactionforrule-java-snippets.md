---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceComplianceScheduledActionForRule deviceComplianceScheduledActionForRule = graphClient.deviceManagement().deviceCompliancePolicies("{deviceCompliancePolicyId}").scheduledActionsForRule("{deviceComplianceScheduledActionForRuleId}")
	.buildRequest()
	.get();

```