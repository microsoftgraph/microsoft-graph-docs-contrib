---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/PrivilegedRoles/Item/Settings"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSettingsPutRequestBody()
additionalData := map[string]interface{}{
	"id" : "9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3", 
	"elevationDuration" : "PT8H", 
	notificationToUserOnElevation := false
requestBody.SetNotificationToUserOnElevation(&notificationToUserOnElevation) 
	ticketingInfoOnElevation := true
requestBody.SetTicketingInfoOnElevation(&ticketingInfoOnElevation) 
	mfaOnElevation := false
requestBody.SetMfaOnElevation(&mfaOnElevation) 
	"maxElavationDuration" : "PT0S", 
	"minElevationDuration" : "PT0S", 
	lastGlobalAdmin := false
requestBody.SetLastGlobalAdmin(&lastGlobalAdmin) 
	isMfaOnElevationConfigurable := true
requestBody.SetIsMfaOnElevationConfigurable(&isMfaOnElevationConfigurable) 
	approvalOnElevation := false
requestBody.SetApprovalOnElevation(&approvalOnElevation) 
	approverIds := []string {
		"e2b2a2fb-13d7-495c-adc9-941fe966793f",
		"22770e3f-b9b4-418e-9dea-d0e3d2f275dd",

	}
}
requestBody.SetAdditionalData(additionalData)

graphClient.PrivilegedRoles().ByPrivilegedRoleId("privilegedRole-id").Settings().Put(context.Background(), requestBody, nil)


```