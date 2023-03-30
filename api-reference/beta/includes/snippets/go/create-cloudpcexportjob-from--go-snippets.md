---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCloudPcExportJob()
reportName := graphmodels.TOTALAGGREGATEDREMOTECONNECTIONREPORTS_CLOUDPCREPORTNAME 
requestBody.SetReportName(&reportName) 
select := []string {
	"CloudPcId",
	"ManagedDeviceName",
	"UserPrincipalName",
	"DaysSinceLastSignIn",
	"TotalUsageInHour",

}
requestBody.SetSelect(select)

result, err := graphClient.DeviceManagement().VirtualEndpoint().Reports().ExportJobs().Post(context.Background(), requestBody, nil)


```