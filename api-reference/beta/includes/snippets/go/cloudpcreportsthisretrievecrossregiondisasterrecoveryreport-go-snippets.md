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

requestBody := graphdevicemanagement.NewRetrieveCrossRegionDisasterRecoveryReportPostRequestBody()
reportName := graphmodels.CROSSREGIONDISASTERRECOVERYREPORT_CLOUDPCDISASTERRECOVERYREPORTNAME 
requestBody.SetReportName(&reportName) 
filter := "DisasterRecoveryStatus eq 'Active outage'"
requestBody.SetFilter(&filter) 
select := []string {
	"Id",
	"CloudPcId",
	"UserId",
	"UserSettingId",
	"DeviceId",
	"CloudPCDeviceDisplayName",
	"UserPrincipalName",
	"EnabledDRType",
	"DRHealthStatus",
	"LicenseType",
	"DisasterRecoveryStatus",
	"CurrentRestorePointDateTime",
	"BackupCloudPcStatus",
	"ActivationExpirationDateTime",
}
requestBody.SetSelect(select)
skip := int32(0)
requestBody.SetSkip(&skip) 
top := int32(50)
requestBody.SetTop(&top) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.DeviceManagement().VirtualEndpoint().Reports().RetrieveCrossRegionDisasterRecoveryReport().Post(context.Background(), requestBody, nil)


```