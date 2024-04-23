---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCloudPcBulkAction()
displayName := "Bulk Power Off by Andy"
requestBody.SetDisplayName(&displayName) 
cloudPcIds := []string {
	"d6e0b8ee-8836-4b8d-b038-6130a97a3a9d",
	"85994912-197b-4927-b569-447bd81350ec",
}
requestBody.SetCloudPcIds(cloudPcIds)
scheduledDuringMaintenanceWindow := true
requestBody.SetScheduledDuringMaintenanceWindow(&scheduledDuringMaintenanceWindow) 

bulkActions, err := graphClient.DeviceManagement().VirtualEndpoint().BulkActions().Post(context.Background(), requestBody, nil)


```