---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  "time"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "return=representation")

configuration := &graphconfig.SecurityAlertItemRequestBuilderPatchRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewAlert()
assignedTo := "String"
requestBody.SetAssignedTo(&assignedTo) 
closedDateTime , err := time.Parse(time.RFC3339, "String (timestamp)")
requestBody.SetClosedDateTime(&closedDateTime) 
comments := []string {
	"String",

}
requestBody.SetComments(comments)
feedback := graphmodels.ALERTFEEDBACK_GRAPH_TYPE: MICROSOFT_@ODATA_ALERTFEEDBACK 
requestBody.SetFeedback(&feedback) 
status := graphmodels.ALERTSTATUS_GRAPH_TYPE: MICROSOFT_@ODATA_ALERTSTATUS 
requestBody.SetStatus(&status) 
tags := []string {
	"String",

}
requestBody.SetTags(tags)
vendorInformation := graphmodels.NewSecurityVendorInformation()
provider := "String"
vendorInformation.SetProvider(&provider) 
vendor := "String"
vendorInformation.SetVendor(&vendor) 
requestBody.SetVendorInformation(vendorInformation)

result, err := graphClient.Security().Alerts().ByAlertId("alert-id").Patch(context.Background(), requestBody, configuration)


```