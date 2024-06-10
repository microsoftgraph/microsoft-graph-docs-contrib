---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
scheduledActionConfigurations, err := graphClient.DeviceManagement().DeviceCompliancePolicies().ByDeviceCompliancePolicyId("deviceCompliancePolicy-id").ScheduledActionsForRule().ByDeviceComplianceScheduledActionForRuleId("deviceComplianceScheduledActionForRule-id").ScheduledActionConfigurations().ByDeviceComplianceActionItemId("deviceComplianceActionItem-id").Patch(context.Background(), requestBody, nil)


```