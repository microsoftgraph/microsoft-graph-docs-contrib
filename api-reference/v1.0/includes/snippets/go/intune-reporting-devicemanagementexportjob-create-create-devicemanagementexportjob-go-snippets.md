---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewDeviceManagementExportJob()
reportName := "Report Name value"
requestBody.SetReportName(&reportName) 
filter := "Filter value"
requestBody.SetFilter(&filter) 
select := []string {
	"Select value",
}
requestBody.SetSelect(select)
format := graphmodels.PDF_DEVICEMANAGEMENTREPORTFILEFORMAT 
requestBody.SetFormat(&format) 
snapshotId := "Snapshot Id value"
requestBody.SetSnapshotId(&snapshotId) 
localizationType := graphmodels.REPLACELOCALIZABLEVALUES_DEVICEMANAGEMENTEXPORTJOBLOCALIZATIONTYPE 
requestBody.SetLocalizationType(&localizationType) 
status := graphmodels.NOTSTARTED_DEVICEMANAGEMENTREPORTSTATUS 
requestBody.SetStatus(&status) 
url := "Url value"
requestBody.SetUrl(&url) 
requestDateTime , err := time.Parse(time.RFC3339, "2017-01-01T00:03:07.1589002-08:00")
requestBody.SetRequestDateTime(&requestDateTime) 
expirationDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:57:57.2481234-08:00")
requestBody.SetExpirationDateTime(&expirationDateTime) 

exportJobs, err := graphClient.DeviceManagement().Reports().ExportJobs().Post(context.Background(), requestBody, nil)


```