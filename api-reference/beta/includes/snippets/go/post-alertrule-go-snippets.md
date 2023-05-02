---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//deviceManagement"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAlertRule()
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

result, err := graphClient.DeviceManagement().Monitoring().AlertRules().Post(context.Background(), requestBody, nil)


```