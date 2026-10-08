---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-sdk-go/devicemanagement"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphdevicemanagement.NewRetrieveCloudPcRecommendationReportsPostRequestBody()
reportType := graphmodels.CLOUDPCUSAGECATEGORYREPORT_CLOUDPCRECOMMENDATIONREPORTTYPE 
requestBody.SetReportType(&reportType) 
select := []string {
	"ServicePlanId",
	"ServicePlanName",
	"UsageInsight",
}
requestBody.SetSelect(select)
groupBy := []string {
	"ServicePlanId",
	"ServicePlanName",
	"UsageInsight",
}
requestBody.SetGroupBy(groupBy)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.DeviceManagement().VirtualEndpoint().Report().RetrieveCloudPcRecommendationReports().Post(context.Background(), requestBody, nil)


```