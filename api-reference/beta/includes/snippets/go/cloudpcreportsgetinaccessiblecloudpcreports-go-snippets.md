---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/devicemanagement"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

graphClient.DeviceManagement().VirtualEndpoint().Reports().GetInaccessibleCloudPcReports().Post(context.Background(), requestBody, nil)


```