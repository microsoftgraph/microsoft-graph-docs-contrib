---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
alerts, err := graphClient.Security().Alerts().ByAlertId("alert-id").Patch(context.Background(), requestBody, nil)


```