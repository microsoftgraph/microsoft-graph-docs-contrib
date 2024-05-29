---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.devicemanagement.AlertRule alertRule = new com.microsoft.graph.beta.models.devicemanagement.AlertRule();
alertRule.setId("215c55cc-b1c9-4d36-a870-be5778101714");
alertRule.setDisplayName("Azure network connection failure impacting Cloud PCs");
alertRule.setSeverity(com.microsoft.graph.beta.models.devicemanagement.RuleSeverityType.Informational);
alertRule.setIsSystemRule(true);
alertRule.setDescription("Azure network connection checks have failed and is potentially impacting existing Cloud PCs and blocking the provisioning of new Cloud PCs");
alertRule.setEnabled(true);
alertRule.setAlertRuleTemplate(com.microsoft.graph.beta.models.devicemanagement.AlertRuleTemplate.CloudPcOnPremiseNetworkConnectionCheckScenario);
com.microsoft.graph.beta.models.devicemanagement.RuleThreshold threshold = new com.microsoft.graph.beta.models.devicemanagement.RuleThreshold();
threshold.setAggregation(com.microsoft.graph.beta.models.devicemanagement.AggregationType.Count);
threshold.setOperator(com.microsoft.graph.beta.models.devicemanagement.OperatorType.GreaterOrEqual);
threshold.setTarget(90);
alertRule.setThreshold(threshold);
LinkedList<com.microsoft.graph.beta.models.devicemanagement.RuleCondition> conditions = new LinkedList<com.microsoft.graph.beta.models.devicemanagement.RuleCondition>();
com.microsoft.graph.beta.models.devicemanagement.RuleCondition ruleCondition = new com.microsoft.graph.beta.models.devicemanagement.RuleCondition();
ruleCondition.setRelationshipType(com.microsoft.graph.beta.models.devicemanagement.RelationshipType.Or);
ruleCondition.setConditionCategory(com.microsoft.graph.beta.models.devicemanagement.ConditionCategory.AzureNetworkConnectionCheckFailures);
ruleCondition.setAggregation(com.microsoft.graph.beta.models.devicemanagement.AggregationType.Count);
ruleCondition.setOperator(com.microsoft.graph.beta.models.devicemanagement.OperatorType.GreaterOrEqual);
ruleCondition.setThresholdValue("90");
conditions.add(ruleCondition);
alertRule.setConditions(conditions);
LinkedList<com.microsoft.graph.beta.models.devicemanagement.NotificationChannel> notificationChannels = new LinkedList<com.microsoft.graph.beta.models.devicemanagement.NotificationChannel>();
com.microsoft.graph.beta.models.devicemanagement.NotificationChannel notificationChannel = new com.microsoft.graph.beta.models.devicemanagement.NotificationChannel();
notificationChannel.setNotificationChannelType(com.microsoft.graph.beta.models.devicemanagement.NotificationChannelType.Portal);
LinkedList<com.microsoft.graph.beta.models.devicemanagement.NotificationReceiver> notificationReceivers = new LinkedList<com.microsoft.graph.beta.models.devicemanagement.NotificationReceiver>();
notificationChannel.setNotificationReceivers(notificationReceivers);
notificationChannels.add(notificationChannel);
com.microsoft.graph.beta.models.devicemanagement.NotificationChannel notificationChannel1 = new com.microsoft.graph.beta.models.devicemanagement.NotificationChannel();
notificationChannel1.setNotificationChannelType(com.microsoft.graph.beta.models.devicemanagement.NotificationChannelType.Email);
LinkedList<com.microsoft.graph.beta.models.devicemanagement.NotificationReceiver> notificationReceivers1 = new LinkedList<com.microsoft.graph.beta.models.devicemanagement.NotificationReceiver>();
com.microsoft.graph.beta.models.devicemanagement.NotificationReceiver notificationReceiver = new com.microsoft.graph.beta.models.devicemanagement.NotificationReceiver();
notificationReceiver.setLocale("en-us");
notificationReceiver.setContactInformation("serena.davis@contoso.com");
notificationReceivers1.add(notificationReceiver);
notificationChannel1.setNotificationReceivers(notificationReceivers1);
notificationChannels.add(notificationChannel1);
alertRule.setNotificationChannels(notificationChannels);
com.microsoft.graph.models.devicemanagement.AlertRule result = graphClient.deviceManagement().monitoring().alertRules().post(alertRule);


```