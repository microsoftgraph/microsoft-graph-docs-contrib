---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceManagementPartner deviceManagementPartner = new DeviceManagementPartner();
deviceManagementPartner.setOdataType("#microsoft.graph.deviceManagementPartner");
OffsetDateTime lastHeartbeatDateTime = OffsetDateTime.parse("2016-12-31T23:59:37.9174975-08:00");
deviceManagementPartner.setLastHeartbeatDateTime(lastHeartbeatDateTime);
deviceManagementPartner.setPartnerState(DeviceManagementPartnerTenantState.Unavailable);
deviceManagementPartner.setPartnerAppType(DeviceManagementPartnerAppType.SingleTenantApp);
deviceManagementPartner.setSingleTenantAppId("Single Tenant App Id value");
deviceManagementPartner.setDisplayName("Display Name value");
deviceManagementPartner.setIsConfigured(true);
OffsetDateTime whenPartnerDevicesWillBeRemovedDateTime = OffsetDateTime.parse("2016-12-31T23:56:38.2655023-08:00");
deviceManagementPartner.setWhenPartnerDevicesWillBeRemovedDateTime(whenPartnerDevicesWillBeRemovedDateTime);
OffsetDateTime whenPartnerDevicesWillBeMarkedAsNonCompliantDateTime = OffsetDateTime.parse("2016-12-31T23:58:42.2131231-08:00");
deviceManagementPartner.setWhenPartnerDevicesWillBeMarkedAsNonCompliantDateTime(whenPartnerDevicesWillBeMarkedAsNonCompliantDateTime);
LinkedList<DeviceManagementPartnerAssignment> groupsRequiringPartnerEnrollment = new LinkedList<DeviceManagementPartnerAssignment>();
DeviceManagementPartnerAssignment deviceManagementPartnerAssignment = new DeviceManagementPartnerAssignment();
deviceManagementPartnerAssignment.setOdataType("microsoft.graph.deviceManagementPartnerAssignment");
ConfigurationManagerCollectionAssignmentTarget target = new ConfigurationManagerCollectionAssignmentTarget();
target.setOdataType("microsoft.graph.configurationManagerCollectionAssignmentTarget");
target.setCollectionId("Collection Id value");
deviceManagementPartnerAssignment.setTarget(target);
groupsRequiringPartnerEnrollment.add(deviceManagementPartnerAssignment);
deviceManagementPartner.setGroupsRequiringPartnerEnrollment(groupsRequiringPartnerEnrollment);
DeviceManagementPartner result = graphClient.deviceManagement().deviceManagementPartners().post(deviceManagementPartner);


```