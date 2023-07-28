---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AlertRule()
request_body.id = '215c55cc-b1c9-4d36-a870-be5778101714'

request_body.display_name = 'Azure network connection failure impacting Cloud PCs'

request_body.severity(RuleSeverityType.Informational('ruleseveritytype.informational'))

request_body.is_system_rule = True

request_body.description = 'Azure network connection checks have failed and is potentially impacting existing Cloud PCs and blocking the provisioning of new Cloud PCs'

request_body.enabled = True

request_body.alertruletemplate(AlertRuleTemplate.CloudPcOnPremiseNetworkConnectionCheckScenario('alertruletemplate.cloudpconpremisenetworkconnectioncheckscenario'))

threshold = RuleThreshold()
threshold.aggregation(AggregationType.Count('aggregationtype.count'))

threshold.operator(OperatorType.GreaterOrEqual('operatortype.greaterorequal'))

threshold.Target = 90


request_body.threshold = threshold
notification_channels_notification_channel1 = NotificationChannel()
notification_channels_notification_channel1.notificationchanneltype(NotificationChannelType.Portal('notificationchanneltype.portal'))

notification_channels_notification_channel1.Receivers(['', ])

notification_channels_notification_channel1.NotificationReceivers([])


notificationChannelsArray []= notificationChannelsNotificationChannel1;
notification_channels_notification_channel2 = NotificationChannel()
notification_channels_notification_channel2.notificationchanneltype(NotificationChannelType.Email('notificationchanneltype.email'))

notification_channels_notification_channel2.Receivers(['serena.davis@contoso.com', ])

notification_receivers_notification_receiver1 = NotificationReceiver()
notification_receivers_notification_receiver1.locale = 'en-us'

notification_receivers_notification_receiver1.contact_information = 'serena.davis@contoso.com'


notificationReceiversArray []= notificationReceiversNotificationReceiver1;
notification_channels_notification_channel2.notificationreceivers(notificationReceiversArray)



notificationChannelsArray []= notificationChannelsNotificationChannel2;
request_body.notificationchannels(notificationChannelsArray)





result = await client.device_management.monitoring.alert_rules.post(request_body = request_body)


```