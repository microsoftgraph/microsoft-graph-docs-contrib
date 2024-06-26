---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ComplianceManagementPartner complianceManagementPartner = new ComplianceManagementPartner();
complianceManagementPartner.setOdataType("#microsoft.graph.complianceManagementPartner");
OffsetDateTime lastHeartbeatDateTime = OffsetDateTime.parse("2016-12-31T23:59:37.9174975-08:00");
complianceManagementPartner.setLastHeartbeatDateTime(lastHeartbeatDateTime);
complianceManagementPartner.setPartnerState(DeviceManagementPartnerTenantState.Unavailable);
complianceManagementPartner.setDisplayName("Display Name value");
complianceManagementPartner.setMacOsOnboarded(true);
complianceManagementPartner.setAndroidOnboarded(true);
complianceManagementPartner.setIosOnboarded(true);
LinkedList<ComplianceManagementPartnerAssignment> macOsEnrollmentAssignments = new LinkedList<ComplianceManagementPartnerAssignment>();
ComplianceManagementPartnerAssignment complianceManagementPartnerAssignment = new ComplianceManagementPartnerAssignment();
complianceManagementPartnerAssignment.setOdataType("microsoft.graph.complianceManagementPartnerAssignment");
ConfigurationManagerCollectionAssignmentTarget target = new ConfigurationManagerCollectionAssignmentTarget();
target.setOdataType("microsoft.graph.configurationManagerCollectionAssignmentTarget");
target.setCollectionId("Collection Id value");
complianceManagementPartnerAssignment.setTarget(target);
macOsEnrollmentAssignments.add(complianceManagementPartnerAssignment);
complianceManagementPartner.setMacOsEnrollmentAssignments(macOsEnrollmentAssignments);
LinkedList<ComplianceManagementPartnerAssignment> androidEnrollmentAssignments = new LinkedList<ComplianceManagementPartnerAssignment>();
ComplianceManagementPartnerAssignment complianceManagementPartnerAssignment1 = new ComplianceManagementPartnerAssignment();
complianceManagementPartnerAssignment1.setOdataType("microsoft.graph.complianceManagementPartnerAssignment");
ConfigurationManagerCollectionAssignmentTarget target1 = new ConfigurationManagerCollectionAssignmentTarget();
target1.setOdataType("microsoft.graph.configurationManagerCollectionAssignmentTarget");
target1.setCollectionId("Collection Id value");
complianceManagementPartnerAssignment1.setTarget(target1);
androidEnrollmentAssignments.add(complianceManagementPartnerAssignment1);
complianceManagementPartner.setAndroidEnrollmentAssignments(androidEnrollmentAssignments);
LinkedList<ComplianceManagementPartnerAssignment> iosEnrollmentAssignments = new LinkedList<ComplianceManagementPartnerAssignment>();
ComplianceManagementPartnerAssignment complianceManagementPartnerAssignment2 = new ComplianceManagementPartnerAssignment();
complianceManagementPartnerAssignment2.setOdataType("microsoft.graph.complianceManagementPartnerAssignment");
ConfigurationManagerCollectionAssignmentTarget target2 = new ConfigurationManagerCollectionAssignmentTarget();
target2.setOdataType("microsoft.graph.configurationManagerCollectionAssignmentTarget");
target2.setCollectionId("Collection Id value");
complianceManagementPartnerAssignment2.setTarget(target2);
iosEnrollmentAssignments.add(complianceManagementPartnerAssignment2);
complianceManagementPartner.setIosEnrollmentAssignments(iosEnrollmentAssignments);
ComplianceManagementPartner result = graphClient.deviceManagement().complianceManagementPartners().post(complianceManagementPartner);


```