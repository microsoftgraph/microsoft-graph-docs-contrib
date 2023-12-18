---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceComplianceScheduledActionForRuleCollectionPage scheduledActionsForRule = graphClient.deviceManagement().deviceCompliancePolicies("{deviceCompliancePolicyId}").scheduledActionsForRule()
	.buildRequest()
	.get();

```