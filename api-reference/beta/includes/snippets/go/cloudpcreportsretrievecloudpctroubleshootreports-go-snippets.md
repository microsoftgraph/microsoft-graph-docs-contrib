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

requestBody := graphdevicemanagement.NewRetrieveCloudPcTroubleshootReportsPostRequestBody()
reportName := graphmodels.TROUBLESHOOTTENANTACTIVECONNECTIONCOUNTTRENDREPORT_CLOUDPCTROUBLESHOOTREPORTTYPE 
requestBody.SetReportName(&reportName) 
select := []string {
	"EventDateTime",
	"TotalActiveConnectionCountAvg",
	"GroupColumn",
}
requestBody.SetSelect(select)
filter := "(TimeRange eq 'Last 7 days') and (PolicyNameParam eq '') and (RegionParam eq '') and (UserSettingNameParam eq '') and (ServicePlanTypeParam eq 'Enterprise') and (ServicePlanNameParam eq '') and (OSBuildVersionParam eq '') and (AADJoinTypeParam eq '') and (ImageNameParam eq '') and (GatewayRegionParam eq '') and (ClientOSParam eq '') and (ClientTypeParam eq '') and (TransportTypeParam eq '') and (CloudPCEndpointCountryRegionParam eq '') and (CloudPCEndpointStateParam eq '') and (CloudPCEndpointCityParam eq '')"
requestBody.SetFilter(&filter) 
top := int32(1000)
requestBody.SetTop(&top) 
skip := int32(0)
requestBody.SetSkip(&skip) 
groupBy := []string {
	"GatewayRegion",
}
requestBody.SetGroupBy(groupBy)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.DeviceManagement().VirtualEndpoint().Reports().RetrieveCloudPcTroubleshootReports().Post(context.Background(), requestBody, nil)


```