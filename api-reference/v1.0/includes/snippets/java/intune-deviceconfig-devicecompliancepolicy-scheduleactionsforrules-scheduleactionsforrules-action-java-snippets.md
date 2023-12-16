---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<DeviceComplianceScheduledActionForRule> deviceComplianceScheduledActionForRulesList = new LinkedList<DeviceComplianceScheduledActionForRule>();
DeviceComplianceScheduledActionForRule deviceComplianceScheduledActionForRules = new DeviceComplianceScheduledActionForRule();
deviceComplianceScheduledActionForRules.id = "f0075d5e-5d5e-f007-5e5d-07f05e5d07f0";
deviceComplianceScheduledActionForRules.ruleName = "Rule Name value";

deviceComplianceScheduledActionForRulesList.add(deviceComplianceScheduledActionForRules);
DeviceComplianceScheduledActionForRuleCollectionResponse deviceComplianceScheduledActionForRuleCollectionResponse = new DeviceComplianceScheduledActionForRuleCollectionResponse();
deviceComplianceScheduledActionForRuleCollectionResponse.value = deviceComplianceScheduledActionForRulesList;
DeviceComplianceScheduledActionForRuleCollectionPage deviceComplianceScheduledActionForRuleCollectionPage = new DeviceComplianceScheduledActionForRuleCollectionPage(deviceComplianceScheduledActionForRuleCollectionResponse, null);

graphClient.deviceManagement().deviceCompliancePolicies("{deviceCompliancePolicyId}")
	.scheduleActionsForRules(DeviceCompliancePolicyScheduleActionsForRulesParameterSet
		.newBuilder()
		.withDeviceComplianceScheduledActionForRules(deviceComplianceScheduledActionForRulesList)
		.build())
	.buildRequest()
	.post();

```