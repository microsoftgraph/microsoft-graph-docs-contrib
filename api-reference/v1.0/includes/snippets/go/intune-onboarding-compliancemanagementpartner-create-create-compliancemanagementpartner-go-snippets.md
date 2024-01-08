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


requestBody := graphmodels.NewComplianceManagementPartner()
lastHeartbeatDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:59:37.9174975-08:00")
requestBody.SetLastHeartbeatDateTime(&lastHeartbeatDateTime) 
partnerState := graphmodels.UNAVAILABLE_DEVICEMANAGEMENTPARTNERTENANTSTATE 
requestBody.SetPartnerState(&partnerState) 
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
macOsOnboarded := true
requestBody.SetMacOsOnboarded(&macOsOnboarded) 
androidOnboarded := true
requestBody.SetAndroidOnboarded(&androidOnboarded) 
iosOnboarded := true
requestBody.SetIosOnboarded(&iosOnboarded) 


complianceManagementPartnerAssignment := graphmodels.NewComplianceManagementPartnerAssignment()
target := graphmodels.NewConfigurationManagerCollectionAssignmentTarget()
collectionId := "Collection Id value"
target.SetCollectionId(&collectionId) 
complianceManagementPartnerAssignment.SetTarget(target)

macOsEnrollmentAssignments := []graphmodels.ComplianceManagementPartnerAssignmentable {
	complianceManagementPartnerAssignment,
}
requestBody.SetMacOsEnrollmentAssignments(macOsEnrollmentAssignments)


complianceManagementPartnerAssignment := graphmodels.NewComplianceManagementPartnerAssignment()
target := graphmodels.NewConfigurationManagerCollectionAssignmentTarget()
collectionId := "Collection Id value"
target.SetCollectionId(&collectionId) 
complianceManagementPartnerAssignment.SetTarget(target)

androidEnrollmentAssignments := []graphmodels.ComplianceManagementPartnerAssignmentable {
	complianceManagementPartnerAssignment,
}
requestBody.SetAndroidEnrollmentAssignments(androidEnrollmentAssignments)


complianceManagementPartnerAssignment := graphmodels.NewComplianceManagementPartnerAssignment()
target := graphmodels.NewConfigurationManagerCollectionAssignmentTarget()
collectionId := "Collection Id value"
target.SetCollectionId(&collectionId) 
complianceManagementPartnerAssignment.SetTarget(target)

iosEnrollmentAssignments := []graphmodels.ComplianceManagementPartnerAssignmentable {
	complianceManagementPartnerAssignment,
}
requestBody.SetIosEnrollmentAssignments(iosEnrollmentAssignments)

complianceManagementPartners, err := graphClient.DeviceManagement().ComplianceManagementPartners().Post(context.Background(), requestBody, nil)


```