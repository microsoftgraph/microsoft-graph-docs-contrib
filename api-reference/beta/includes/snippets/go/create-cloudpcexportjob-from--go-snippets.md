---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
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