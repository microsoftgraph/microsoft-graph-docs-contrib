---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/security"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphsecurity.NewUpdateAlertsPostRequestBody()


alert := graphmodels.NewAlert()
assignedTo := "String"
alert.SetAssignedTo(&assignedTo) 
closedDateTime , err := time.Parse(time.RFC3339, "String (timestamp)")
alert.SetClosedDateTime(&closedDateTime) 
comments := []string {
	"String",
}
alert.SetComments(comments)
feedback := graphmodels.NewAlertFeedback()
additionalData := map[string]interface{}{
}
feedback.SetAdditionalData(additionalData)
alert.SetFeedback(feedback)
id := "String (identifier)"
alert.SetId(&id) 
status := graphmodels.NewAlertStatus()
additionalData := map[string]interface{}{
}
status.SetAdditionalData(additionalData)
alert.SetStatus(status)
tags := []string {
	"String",
}
alert.SetTags(tags)
vendorInformation := graphmodels.NewSecurityVendorInformation()
provider := "String"
vendorInformation.SetProvider(&provider) 
vendor := "String"
vendorInformation.SetVendor(&vendor) 
alert.SetVendorInformation(vendorInformation)

value := []graphmodels.alertable {
	alert,
}
requestBody.SetValue(value)

updateAlerts, err := graphClient.Security().Alerts().UpdateAlerts().Post(context.Background(), requestBody, nil)


```