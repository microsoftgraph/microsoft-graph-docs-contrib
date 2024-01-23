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


requestBody := graphdevicemanagement.NewGetActionStatusReportsPostRequestBody()
filter := "ActionState eq 'failed'"
requestBody.SetFilter(&filter) 
select := []string {
	"Id",
	"CloudPcDeviceDisplayName",
	"BulkActionId",
	"BulkActionDisplayName",
	"CloudPcId",
	"InitiatedByUserPrincipalName",
	"DeviceOwnerUserPrincipalName",
	"Action",
	"ActionState",
	"RequestDateTime",
	"LastUpdatedDateTime",
	"ActionParameters",
}
requestBody.SetSelect(select)
skip := int32(0)
requestBody.SetSkip(&skip) 
top := int32(50)
requestBody.SetTop(&top) 

graphClient.DeviceManagement().VirtualEndpoint().Reports().GetActionStatusReports().Post(context.Background(), requestBody, nil)


```