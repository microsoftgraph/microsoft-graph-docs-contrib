---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeviceManagementPartner();
$requestBody->setOdataType('#microsoft.graph.deviceManagementPartner');

$requestBody->setLastHeartbeatDateTime(new \DateTime('2016-12-31T23:59:37.9174975-08:00'));

$requestBody->setPartnerState(new DeviceManagementPartnerTenantState('unavailable'));

$requestBody->setPartnerAppType(new DeviceManagementPartnerAppType('singleTenantApp'));

$requestBody->setSingleTenantAppId('Single Tenant App Id value');

$requestBody->setDisplayName('Display Name value');

$requestBody->setIsConfigured(true);

$requestBody->setWhenPartnerDevicesWillBeRemovedDateTime(new \DateTime('2016-12-31T23:56:38.2655023-08:00'));

$requestBody->setWhenPartnerDevicesWillBeMarkedAsNonCompliantDateTime(new \DateTime('2016-12-31T23:58:42.2131231-08:00'));

$groupsRequiringPartnerEnrollmentDeviceManagementPartnerAssignment1 = new DeviceManagementPartnerAssignment();
$groupsRequiringPartnerEnrollmentDeviceManagementPartnerAssignment1->setOdataType('microsoft.graph.deviceManagementPartnerAssignment');

$groupsRequiringPartnerEnrollmentDeviceManagementPartnerAssignment1Target = new ConfigurationManagerCollectionAssignmentTarget();
$groupsRequiringPartnerEnrollmentDeviceManagementPartnerAssignment1Target->setOdataType('microsoft.graph.configurationManagerCollectionAssignmentTarget');

$groupsRequiringPartnerEnrollmentDeviceManagementPartnerAssignment1Target->setCollectionId('Collection Id value');


$groupsRequiringPartnerEnrollmentDeviceManagementPartnerAssignment1->setTarget($groupsRequiringPartnerEnrollmentDeviceManagementPartnerAssignment1Target);

$groupsRequiringPartnerEnrollmentArray []= $groupsRequiringPartnerEnrollmentDeviceManagementPartnerAssignment1;
$requestBody->setGroupsRequiringPartnerEnrollment($groupsRequiringPartnerEnrollmentArray);




$result = $graphServiceClient->deviceManagement()->deviceManagementPartners()->post($requestBody);


```