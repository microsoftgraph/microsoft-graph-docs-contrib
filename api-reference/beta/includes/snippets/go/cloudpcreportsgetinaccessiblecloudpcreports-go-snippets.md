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
	  //other-imports
)

requestBody := graphdevicemanagement.NewGetInaccessibleCloudPcReportsPostRequestBody()
filter := "region eq 'westus2'"
requestBody.SetFilter(&filter) 
orderBy := []string {
	"cloudPcId",
}
requestBody.SetOrderBy(orderBy)
select := []string {
	"cloudPcId",
	"aadDeviceId",
	"cloudPcName",
	"userPrincipalName",
	"provisioningStatus",
	"region",
	"deviceHealthStatus",
	"deviceHealthStatusDateTime",
	"recentDeviceHealthFailureCount",
	"recentConnectionFailureCount",
	"systemStatus",
	"systemStatusDateTime",
}
requestBody.SetSelect(select)
top := int32(10)
requestBody.SetTop(&top) 
skip := int32(0)
requestBody.SetSkip(&skip) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.DeviceManagement().VirtualEndpoint().Reports().GetInaccessibleCloudPcReports().Post(context.Background(), requestBody, nil)


```