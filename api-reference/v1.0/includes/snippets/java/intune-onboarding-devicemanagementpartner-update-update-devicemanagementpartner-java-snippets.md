---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceManagementPartner deviceManagementPartner = new DeviceManagementPartner();
deviceManagementPartner.lastHeartbeatDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:59:37.9174975+00:00");
deviceManagementPartner.partnerState = DeviceManagementPartnerTenantState.UNAVAILABLE;
deviceManagementPartner.partnerAppType = DeviceManagementPartnerAppType.SINGLE_TENANT_APP;
deviceManagementPartner.singleTenantAppId = "Single Tenant App Id value";
deviceManagementPartner.displayName = "Display Name value";
deviceManagementPartner.isConfigured = true;
deviceManagementPartner.whenPartnerDevicesWillBeRemovedDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:56:38.2655023+00:00");
deviceManagementPartner.whenPartnerDevicesWillBeMarkedAsNonCompliantDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:58:42.2131231+00:00");
LinkedList<DeviceManagementPartnerAssignment> groupsRequiringPartnerEnrollmentList = new LinkedList<DeviceManagementPartnerAssignment>();
DeviceManagementPartnerAssignment groupsRequiringPartnerEnrollment = new DeviceManagementPartnerAssignment();
ConfigurationManagerCollectionAssignmentTarget target = new ConfigurationManagerCollectionAssignmentTarget();
target.collectionId = "Collection Id value";
groupsRequiringPartnerEnrollment.target = target;
groupsRequiringPartnerEnrollmentList.add(groupsRequiringPartnerEnrollment);
deviceManagementPartner.groupsRequiringPartnerEnrollment = groupsRequiringPartnerEnrollmentList;

graphClient.deviceManagement().deviceManagementPartners("{deviceManagementPartnerId}")
	.buildRequest()
	.patch(deviceManagementPartner);

```