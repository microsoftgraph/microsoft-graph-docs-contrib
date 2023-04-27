---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/DeviceManagement/VirtualEndpoint/UserSettings/Item/Assign"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAssignPostRequestBody()


cloudPcUserSettingAssignment := graphmodels.NewCloudPcUserSettingAssignment()
id := "b0c2d35f-3385-46c8-a6f5-6c3dfad7708b_64ff06de-9c00-4a5a-98b5-7f5abe26ffff"
cloudPcUserSettingAssignment.SetId(&id) 
target := graphmodels.NewCloudPcManagementAssignmentTarget()
additionalData := map[string]interface{}{
	"groupId" : "64ff06de-9c00-4a5a-98b5-7f5abe26ffff", 
}
target.SetAdditionalData(additionalData)
cloudPcUserSettingAssignment.SetTarget(target)

assignments := []graphmodels.Objectable {
	cloudPcUserSettingAssignment,

}
requestBody.SetAssignments(assignments)

graphClient.DeviceManagement().VirtualEndpoint().UserSettings().ByUserSettingId("cloudPcUserSetting-id").Assign().Post(context.Background(), requestBody, nil)


```