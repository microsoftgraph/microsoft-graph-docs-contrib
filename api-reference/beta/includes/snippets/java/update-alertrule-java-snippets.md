---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AlertRule alertRule = new AlertRule();
alertRule.severity = RuleSeverityType.INFORMATIONAL;
alertRule.enabled = true;
RuleThreshold threshold = new RuleThreshold();
threshold.aggregation = AggregationType.COUNT;
threshold.operator = OperatorType.GREATER_OR_EQUAL;
threshold.target = 90;
alertRule.threshold = threshold;
LinkedList<NotificationChannel> notificationChannelsList = new LinkedList<NotificationChannel>();
NotificationChannel notificationChannels = new NotificationChannel();
notificationChannels.notificationChannelType = NotificationChannelType.PORTAL;
LinkedList<String> receiversList = new LinkedList<String>();
receiversList.add("");
notificationChannels.receivers = receiversList;
LinkedList<NotificationReceiver> notificationReceiversList = new LinkedList<NotificationReceiver>();
notificationChannels.notificationReceivers = notificationReceiversList;
notificationChannelsList.add(notificationChannels);
NotificationChannel notificationChannels1 = new NotificationChannel();
notificationChannels1.notificationChannelType = NotificationChannelType.EMAIL;
LinkedList<String> receiversList1 = new LinkedList<String>();
receiversList1.add("serena.davis@contoso.com");
notificationChannels1.receivers = receiversList1;
LinkedList<NotificationReceiver> notificationReceiversList1 = new LinkedList<NotificationReceiver>();
NotificationReceiver notificationReceivers = new NotificationReceiver();
notificationReceivers.locale = "en-us";
notificationReceivers.contactInformation = "serena.davis@contoso.com";
notificationReceiversList1.add(notificationReceivers);
notificationChannels1.notificationReceivers = notificationReceiversList1;
notificationChannelsList.add(notificationChannels1);
alertRule.notificationChannels = notificationChannelsList;

graphClient.deviceManagement().monitoring().alertRules("215c55cc-b1c9-4d36-a870-be5778101714")
	.buildRequest()
	.patch(alertRule);

```