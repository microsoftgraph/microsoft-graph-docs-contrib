---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
complianceManagementPartners, err := graphClient.DeviceManagement().ComplianceManagementPartners().ByComplianceManagementPartnerId("complianceManagementPartner-id").Patch(context.Background(), requestBody, nil)


```