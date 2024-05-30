---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/devicemanagement"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphdevicemanagement.NewGetCloudPcRecommendationReportsPostRequestBody()
reportName := graphmodels.CLOUDPCUSAGECATEGORYREPORTS_CLOUDPCREPORTNAME 
requestBody.SetReportName(&reportName) 
select := []string {
	"UsageInsight",
}
requestBody.SetSelect(select)
groupBy := []string {
	"UsageInsight",
}
requestBody.SetGroupBy(groupBy)
filter := ""
requestBody.SetFilter(&filter) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.DeviceManagement().VirtualEndpoint().Reports().GetCloudPcRecommendationReports().Post(context.Background(), requestBody, nil)


```