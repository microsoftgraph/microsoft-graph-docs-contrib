---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewDeviceComplianceActionItem()
gracePeriodHours := int32(0)
requestBody.SetGracePeriodHours(&gracePeriodHours) 
actionType := graphmodels.NOTIFICATION_DEVICECOMPLIANCEACTIONTYPE 
requestBody.SetActionType(&actionType) 
notificationTemplateId := "Notification Template Id value"
requestBody.SetNotificationTemplateId(&notificationTemplateId) 
notificationMessageCCList := []string {
	"Notification Message CCList value",
}
requestBody.SetNotificationMessageCCList(notificationMessageCCList)

scheduledActionConfigurations, err := graphClient.DeviceManagement().DeviceCompliancePolicies().ByDeviceCompliancePolicyId("deviceCompliancePolicy-id").ScheduledActionsForRule().ByDeviceComplianceScheduledActionForRuleId("deviceComplianceScheduledActionForRule-id").ScheduledActionConfigurations().Post(context.Background(), requestBody, nil)


```