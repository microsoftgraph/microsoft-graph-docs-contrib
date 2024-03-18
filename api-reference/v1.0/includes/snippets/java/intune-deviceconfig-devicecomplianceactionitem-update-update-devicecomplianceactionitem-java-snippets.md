---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceComplianceActionItem deviceComplianceActionItem = new DeviceComplianceActionItem();
deviceComplianceActionItem.setOdataType("#microsoft.graph.deviceComplianceActionItem");
deviceComplianceActionItem.setGracePeriodHours(0);
deviceComplianceActionItem.setActionType(DeviceComplianceActionType.Notification);
deviceComplianceActionItem.setNotificationTemplateId("Notification Template Id value");
LinkedList<String> notificationMessageCCList = new LinkedList<String>();
notificationMessageCCList.add("Notification Message CCList value");
deviceComplianceActionItem.setNotificationMessageCCList(notificationMessageCCList);
DeviceComplianceActionItem result = graphClient.deviceManagement().deviceCompliancePolicies().byDeviceCompliancePolicyId("{deviceCompliancePolicy-id}").scheduledActionsForRule().byDeviceComplianceScheduledActionForRuleId("{deviceComplianceScheduledActionForRule-id}").scheduledActionConfigurations().byDeviceComplianceActionItemId("{deviceComplianceActionItem-id}").patch(deviceComplianceActionItem);


```