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

requestBody := graphdevicemanagement.NewAssignPostRequestBody()


cloudPcUserSettingAssignment := graphmodels.NewCloudPcUserSettingAssignment()
id := "b0c2d35f-3385-46c8-a6f5-6c3dfad7708b_64ff06de-9c00-4a5a-98b5-7f5abe26ffff"
cloudPcUserSettingAssignment.SetId(&id) 
target := graphmodels.NewCloudPcManagementGroupAssignmentTarget()
groupId := "64ff06de-9c00-4a5a-98b5-7f5abe26ffff"
target.SetGroupId(&groupId) 
cloudPcUserSettingAssignment.SetTarget(target)

assignments := []graphmodels.CloudPcUserSettingAssignmentable {
	cloudPcUserSettingAssignment,
}
requestBody.SetAssignments(assignments)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.DeviceManagement().VirtualEndpoint().UserSettings().ByCloudPcUserSettingId("cloudPcUserSetting-id").Assign().Post(context.Background(), requestBody, nil)


```