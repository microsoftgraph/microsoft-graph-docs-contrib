---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsdevicemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/models/devicemanagement"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelsdevicemanagement.NewAlertRule()
id := "215c55cc-b1c9-4d36-a870-be5778101714"
requestBody.SetId(&id) 
displayName := "Azure network connection failure impacting Cloud PCs"
requestBody.SetDisplayName(&displayName) 
severity := graphmodels.INFORMATIONAL_RULESEVERITYTYPE 
requestBody.SetSeverity(&severity) 
isSystemRule := true
requestBody.SetIsSystemRule(&isSystemRule) 
description := "Azure network connection checks have failed and is potentially impacting existing Cloud PCs and blocking the provisioning of new Cloud PCs"
requestBody.SetDescription(&description) 
enabled := true
requestBody.SetEnabled(&enabled) 
alertRuleTemplate := graphmodels.CLOUDPCONPREMISENETWORKCONNECTIONCHECKSCENARIO_ALERTRULETEMPLATE 
requestBody.SetAlertRuleTemplate(&alertRuleTemplate) 
threshold := graphmodelsdevicemanagement.NewRuleThreshold()
aggregation := graphmodels.COUNT_AGGREGATIONTYPE 
threshold.SetAggregation(&aggregation) 
operator := graphmodels.GREATEROREQUAL_OPERATORTYPE 
threshold.SetOperator(&operator) 
target := int32(90)
threshold.SetTarget(&target) 
requestBody.SetThreshold(threshold)


notificationChannel := graphmodelsdevicemanagement.NewNotificationChannel()
notificationChannelType := graphmodels.PORTAL_NOTIFICATIONCHANNELTYPE 
notificationChannel.SetNotificationChannelType(&notificationChannelType) 
receivers := []string {
	"",
}
notificationChannel.SetReceivers(receivers)
notificationReceivers := []graphmodelsdevicemanagement.NotificationReceiverable {

}
notificationChannel.SetNotificationReceivers(notificationReceivers)
notificationChannel1 := graphmodelsdevicemanagement.NewNotificationChannel()
notificationChannelType := graphmodels.EMAIL_NOTIFICATIONCHANNELTYPE 
notificationChannel1.SetNotificationChannelType(&notificationChannelType) 
receivers := []string {
	"serena.davis@contoso.com",
}
notificationChannel1.SetReceivers(receivers)


notificationReceiver := graphmodelsdevicemanagement.NewNotificationReceiver()
locale := "en-us"
notificationReceiver.SetLocale(&locale) 
contactInformation := "serena.davis@contoso.com"
notificationReceiver.SetContactInformation(&contactInformation) 

notificationReceivers := []graphmodelsdevicemanagement.NotificationReceiverable {
	notificationReceiver,
}
notificationChannel1.SetNotificationReceivers(notificationReceivers)

notificationChannels := []graphmodelsdevicemanagement.NotificationChannelable {
	notificationChannel,
	notificationChannel1,
}
requestBody.SetNotificationChannels(notificationChannels)

alertRules, err := graphClient.DeviceManagement().Monitoring().AlertRules().Post(context.Background(), requestBody, nil)


```