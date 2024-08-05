---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewCloudPcExportJob()
reportName := graphmodels.REMOTECONNECTIONQUALITYREPORTS_CLOUDPCREPORTNAME 
requestBody.SetReportName(&reportName) 
select := []string {
	"CloudPcId",
	"ManagedDeviceName",
	"AvgRoundTripTimeInMsP50",
	"LastConnectionRoundTripTimeInMs",
	"AvgAvailableBandwidthInMBpsP50",
	"LastConnectionAvailableBandWidthInMSps",
	"AvgRemoteSignInTimeInSecP50",
	"UDPConnectionPercentage",
	"LastConnectionGateway",
	"LastConnectionProtocol",
	"EventDateTime",
}
requestBody.SetSelect(select)
filter := "EventDateTime gt datetime'2023-06-14T07:40:41.694Z'"
requestBody.SetFilter(&filter) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
exportJobs, err := graphClient.DeviceManagement().VirtualEndpoint().Reports().ExportJobs().Post(context.Background(), requestBody, nil)


```