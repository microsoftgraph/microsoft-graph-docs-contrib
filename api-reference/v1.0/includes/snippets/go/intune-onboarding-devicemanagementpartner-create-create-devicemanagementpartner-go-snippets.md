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


requestBody := graphmodels.NewDeviceManagementPartner()
lastHeartbeatDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:59:37.9174975-08:00")
requestBody.SetLastHeartbeatDateTime(&lastHeartbeatDateTime) 
partnerState := graphmodels.UNAVAILABLE_DEVICEMANAGEMENTPARTNERTENANTSTATE 
requestBody.SetPartnerState(&partnerState) 
partnerAppType := graphmodels.SINGLETENANTAPP_DEVICEMANAGEMENTPARTNERAPPTYPE 
requestBody.SetPartnerAppType(&partnerAppType) 
singleTenantAppId := "Single Tenant App Id value"
requestBody.SetSingleTenantAppId(&singleTenantAppId) 
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
isConfigured := true
requestBody.SetIsConfigured(&isConfigured) 
whenPartnerDevicesWillBeRemovedDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:56:38.2655023-08:00")
requestBody.SetWhenPartnerDevicesWillBeRemovedDateTime(&whenPartnerDevicesWillBeRemovedDateTime) 
whenPartnerDevicesWillBeMarkedAsNonCompliantDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:58:42.2131231-08:00")
requestBody.SetWhenPartnerDevicesWillBeMarkedAsNonCompliantDateTime(&whenPartnerDevicesWillBeMarkedAsNonCompliantDateTime) 


deviceManagementPartnerAssignment := graphmodels.NewDeviceManagementPartnerAssignment()
target := graphmodels.NewConfigurationManagerCollectionAssignmentTarget()
collectionId := "Collection Id value"
target.SetCollectionId(&collectionId) 
deviceManagementPartnerAssignment.SetTarget(target)

groupsRequiringPartnerEnrollment := []graphmodels.DeviceManagementPartnerAssignmentable {
	deviceManagementPartnerAssignment,
}
requestBody.SetGroupsRequiringPartnerEnrollment(groupsRequiringPartnerEnrollment)

deviceManagementPartners, err := graphClient.DeviceManagement().DeviceManagementPartners().Post(context.Background(), requestBody, nil)


```