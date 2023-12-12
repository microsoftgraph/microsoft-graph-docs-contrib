---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphusers.NewItemSendVirtualAppointmentSmsPostRequestBody()
phoneNumbers := []string {
	"+13129224122",
	"+1242421412",
}
requestBody.SetPhoneNumbers(phoneNumbers)
additionalData := map[string]interface{}{
	"virtualAppointmentSmsType" : "confirmation", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Me().OnlineMeetings().ByOnlineMeetingId("onlineMeeting-id").SendVirtualAppointmentSms().Post(context.Background(), requestBody, nil)


```