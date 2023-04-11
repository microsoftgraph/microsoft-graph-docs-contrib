---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Security/Alerts/UpdateAlerts"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUpdateAlertsPostRequestBody()


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

value := []graphmodels.Objectable {
	alert,

}
requestBody.SetValue(value)

result, err := graphClient.Security().Alerts().UpdateAlerts().Post(context.Background(), requestBody, nil)


```