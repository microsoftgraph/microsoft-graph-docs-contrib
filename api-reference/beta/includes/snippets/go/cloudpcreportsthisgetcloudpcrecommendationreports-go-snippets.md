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
top := int32(50)
requestBody.SetTop(&top) 
skip := int32(0)
requestBody.SetSkip(&skip) 
search := ""
requestBody.SetSearch(&search) 
filter := ""
requestBody.SetFilter(&filter) 
select := []string {
	"CloudPcId",
	"ManagedDeviceName",
	"UserPrincipalName",
	"UsageInsight",
	"CurrentSize",
	"RecommendedSize",
	"UsageInHour",
	"DevicePerfSummary",
}
requestBody.SetSelect(select)
orderBy := []string {
	"ManagedDeviceName",
}
requestBody.SetOrderBy(orderBy)

graphClient.DeviceManagement().VirtualEndpoint().Reports().GetCloudPcRecommendationReports().Post(context.Background(), requestBody, nil)


```