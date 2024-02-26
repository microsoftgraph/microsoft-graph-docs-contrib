---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/devicemanagement"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

graphClient.DeviceManagement().VirtualEndpoint().Reports().GetCloudPcRecommendationReports().Post(context.Background(), requestBody, nil)


```