---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceComplianceActionItem deviceComplianceActionItem = new DeviceComplianceActionItem();
deviceComplianceActionItem.gracePeriodHours = 0;
deviceComplianceActionItem.actionType = DeviceComplianceActionType.NOTIFICATION;
deviceComplianceActionItem.notificationTemplateId = "Notification Template Id value";
LinkedList<String> notificationMessageCCListList = new LinkedList<String>();
notificationMessageCCListList.add("Notification Message CCList value");
deviceComplianceActionItem.notificationMessageCCList = notificationMessageCCListList;

graphClient.deviceManagement().deviceCompliancePolicies("{deviceCompliancePolicyId}").scheduledActionsForRule("{deviceComplianceScheduledActionForRuleId}").scheduledActionConfigurations("{deviceComplianceActionItemId}")
	.buildRequest()
	.patch(deviceComplianceActionItem);

```