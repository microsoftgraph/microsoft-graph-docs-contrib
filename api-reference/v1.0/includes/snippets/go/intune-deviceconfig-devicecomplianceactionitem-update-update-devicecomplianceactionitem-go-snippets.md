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

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

result, err := graphClient.DeviceManagement().DeviceCompliancePolicies().ByDeviceCompliancePolicieId("deviceCompliancePolicy-id").ScheduledActionsForRule().ByScheduledActionsForRule().Id("deviceComplianceScheduledActionForRule-id").ScheduledActionConfigurations().ByScheduledActionConfigurationId("deviceComplianceActionItem-id").Patch(context.Background(), requestBody, nil)


```