---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.devicecompliancepolicies.item.scheduleactionsforrules.ScheduleActionsForRulesPostRequestBody scheduleActionsForRulesPostRequestBody = new com.microsoft.graph.beta.devicemanagement.devicecompliancepolicies.item.scheduleactionsforrules.ScheduleActionsForRulesPostRequestBody();
LinkedList<DeviceComplianceScheduledActionForRule> deviceComplianceScheduledActionForRules = new LinkedList<DeviceComplianceScheduledActionForRule>();
DeviceComplianceScheduledActionForRule deviceComplianceScheduledActionForRule = new DeviceComplianceScheduledActionForRule();
deviceComplianceScheduledActionForRule.setOdataType("#microsoft.graph.deviceComplianceScheduledActionForRule");
deviceComplianceScheduledActionForRule.setId("f0075d5e-5d5e-f007-5e5d-07f05e5d07f0");
deviceComplianceScheduledActionForRule.setRuleName("Rule Name value");
deviceComplianceScheduledActionForRules.add(deviceComplianceScheduledActionForRule);
scheduleActionsForRulesPostRequestBody.setDeviceComplianceScheduledActionForRules(deviceComplianceScheduledActionForRules);
graphClient.deviceManagement().deviceCompliancePolicies().byDeviceCompliancePolicyId("{deviceCompliancePolicy-id}").scheduleActionsForRules().post(scheduleActionsForRulesPostRequestBody);


```