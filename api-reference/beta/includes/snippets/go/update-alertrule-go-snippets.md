---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAlertRule()
severity := graphmodels.INFORMATIONAL_RULESEVERITYTYPE 
requestBody.SetSeverity(&severity) 
enabled := true
requestBody.SetEnabled(&enabled) 
threshold := graphmodels.NewRuleThreshold()
aggregation := graphmodels.COUNT_AGGREGATIONTYPE 
threshold.SetAggregation(&aggregation) 
operator := graphmodels.GREATEROREQUAL_OPERATORTYPE 
threshold.SetOperator(&operator) 
target := int32(90)
threshold.SetTarget(&target) 
requestBody.SetThreshold(threshold)


notificationChannel := graphmodels.NewNotificationChannel()
notificationChannelType := graphmodels.PORTAL_NOTIFICATIONCHANNELTYPE 
notificationChannel.SetNotificationChannelType(&notificationChannelType) 
receivers := []string {
	"",

}
notificationChannel.SetReceivers(receivers)
notificationReceivers := []graphmodels.NotificationReceiverable {

}
notificationChannel.SetNotificationReceivers(notificationReceivers)
notificationChannel1 := graphmodels.NewNotificationChannel()
notificationChannelType := graphmodels.EMAIL_NOTIFICATIONCHANNELTYPE 
notificationChannel1.SetNotificationChannelType(&notificationChannelType) 
receivers := []string {
	"serena.davis@contoso.com",

}
notificationChannel1.SetReceivers(receivers)


notificationReceiver := graphmodels.NewNotificationReceiver()
locale := "en-us"
notificationReceiver.SetLocale(&locale) 
contactInformation := "serena.davis@contoso.com"
notificationReceiver.SetContactInformation(&contactInformation) 

notificationReceivers := []graphmodels.NotificationReceiverable {
	notificationReceiver,

}
notificationChannel1.SetNotificationReceivers(notificationReceivers)

notificationChannels := []graphmodels.NotificationChannelable {
	notificationChannel,
	notificationChannel1,

}
requestBody.SetNotificationChannels(notificationChannels)

result, err := graphClient.DeviceManagement().Monitoring().AlertRulesById("alertRule-id").Patch(context.Background(), requestBody, nil)


```