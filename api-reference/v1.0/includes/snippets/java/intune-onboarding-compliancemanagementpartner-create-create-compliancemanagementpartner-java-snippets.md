---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ComplianceManagementPartner complianceManagementPartner = new ComplianceManagementPartner();
complianceManagementPartner.lastHeartbeatDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:59:37.9174975+00:00");
complianceManagementPartner.partnerState = DeviceManagementPartnerTenantState.UNAVAILABLE;
complianceManagementPartner.displayName = "Display Name value";
complianceManagementPartner.macOsOnboarded = true;
complianceManagementPartner.androidOnboarded = true;
complianceManagementPartner.iosOnboarded = true;
LinkedList<ComplianceManagementPartnerAssignment> macOsEnrollmentAssignmentsList = new LinkedList<ComplianceManagementPartnerAssignment>();
ComplianceManagementPartnerAssignment macOsEnrollmentAssignments = new ComplianceManagementPartnerAssignment();
ConfigurationManagerCollectionAssignmentTarget target = new ConfigurationManagerCollectionAssignmentTarget();
target.collectionId = "Collection Id value";
macOsEnrollmentAssignments.target = target;
macOsEnrollmentAssignmentsList.add(macOsEnrollmentAssignments);
complianceManagementPartner.macOsEnrollmentAssignments = macOsEnrollmentAssignmentsList;
LinkedList<ComplianceManagementPartnerAssignment> androidEnrollmentAssignmentsList = new LinkedList<ComplianceManagementPartnerAssignment>();
ComplianceManagementPartnerAssignment androidEnrollmentAssignments = new ComplianceManagementPartnerAssignment();
ConfigurationManagerCollectionAssignmentTarget target1 = new ConfigurationManagerCollectionAssignmentTarget();
target1.collectionId = "Collection Id value";
androidEnrollmentAssignments.target = target1;
androidEnrollmentAssignmentsList.add(androidEnrollmentAssignments);
complianceManagementPartner.androidEnrollmentAssignments = androidEnrollmentAssignmentsList;
LinkedList<ComplianceManagementPartnerAssignment> iosEnrollmentAssignmentsList = new LinkedList<ComplianceManagementPartnerAssignment>();
ComplianceManagementPartnerAssignment iosEnrollmentAssignments = new ComplianceManagementPartnerAssignment();
ConfigurationManagerCollectionAssignmentTarget target2 = new ConfigurationManagerCollectionAssignmentTarget();
target2.collectionId = "Collection Id value";
iosEnrollmentAssignments.target = target2;
iosEnrollmentAssignmentsList.add(iosEnrollmentAssignments);
complianceManagementPartner.iosEnrollmentAssignments = iosEnrollmentAssignmentsList;

graphClient.deviceManagement().complianceManagementPartners()
	.buildRequest()
	.post(complianceManagementPartner);

```