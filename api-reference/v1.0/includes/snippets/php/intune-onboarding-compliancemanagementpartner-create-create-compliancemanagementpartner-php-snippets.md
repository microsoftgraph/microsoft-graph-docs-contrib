---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ComplianceManagementPartner();
$requestBody->setOdataType('#microsoft.graph.complianceManagementPartner');

$requestBody->setLastHeartbeatDateTime(new \DateTime('2016-12-31T23:59:37.9174975-08:00'));

$requestBody->setPartnerState(new DeviceManagementPartnerTenantState('unavailable'));

$requestBody->setDisplayName('Display Name value');

$requestBody->setMacOsOnboarded(true);

$requestBody->setAndroidOnboarded(true);

$requestBody->setIosOnboarded(true);

$macOsEnrollmentAssignmentsComplianceManagementPartnerAssignment1 = new ComplianceManagementPartnerAssignment();
$macOsEnrollmentAssignmentsComplianceManagementPartnerAssignment1->setOdataType('microsoft.graph.complianceManagementPartnerAssignment');

$macOsEnrollmentAssignmentsComplianceManagementPartnerAssignment1Target = new ConfigurationManagerCollectionAssignmentTarget();
$macOsEnrollmentAssignmentsComplianceManagementPartnerAssignment1Target->setOdataType('microsoft.graph.configurationManagerCollectionAssignmentTarget');

$macOsEnrollmentAssignmentsComplianceManagementPartnerAssignment1Target->setCollectionId('Collection Id value');


$macOsEnrollmentAssignmentsComplianceManagementPartnerAssignment1->setTarget($macOsEnrollmentAssignmentsComplianceManagementPartnerAssignment1Target);

$macOsEnrollmentAssignmentsArray []= $macOsEnrollmentAssignmentsComplianceManagementPartnerAssignment1;
$requestBody->setMacOsEnrollmentAssignments($macOsEnrollmentAssignmentsArray);


$androidEnrollmentAssignmentsComplianceManagementPartnerAssignment1 = new ComplianceManagementPartnerAssignment();
$androidEnrollmentAssignmentsComplianceManagementPartnerAssignment1->setOdataType('microsoft.graph.complianceManagementPartnerAssignment');

$androidEnrollmentAssignmentsComplianceManagementPartnerAssignment1Target = new ConfigurationManagerCollectionAssignmentTarget();
$androidEnrollmentAssignmentsComplianceManagementPartnerAssignment1Target->setOdataType('microsoft.graph.configurationManagerCollectionAssignmentTarget');

$androidEnrollmentAssignmentsComplianceManagementPartnerAssignment1Target->setCollectionId('Collection Id value');


$androidEnrollmentAssignmentsComplianceManagementPartnerAssignment1->setTarget($androidEnrollmentAssignmentsComplianceManagementPartnerAssignment1Target);

$androidEnrollmentAssignmentsArray []= $androidEnrollmentAssignmentsComplianceManagementPartnerAssignment1;
$requestBody->setAndroidEnrollmentAssignments($androidEnrollmentAssignmentsArray);


$iosEnrollmentAssignmentsComplianceManagementPartnerAssignment1 = new ComplianceManagementPartnerAssignment();
$iosEnrollmentAssignmentsComplianceManagementPartnerAssignment1->setOdataType('microsoft.graph.complianceManagementPartnerAssignment');

$iosEnrollmentAssignmentsComplianceManagementPartnerAssignment1Target = new ConfigurationManagerCollectionAssignmentTarget();
$iosEnrollmentAssignmentsComplianceManagementPartnerAssignment1Target->setOdataType('microsoft.graph.configurationManagerCollectionAssignmentTarget');

$iosEnrollmentAssignmentsComplianceManagementPartnerAssignment1Target->setCollectionId('Collection Id value');


$iosEnrollmentAssignmentsComplianceManagementPartnerAssignment1->setTarget($iosEnrollmentAssignmentsComplianceManagementPartnerAssignment1Target);

$iosEnrollmentAssignmentsArray []= $iosEnrollmentAssignmentsComplianceManagementPartnerAssignment1;
$requestBody->setIosEnrollmentAssignments($iosEnrollmentAssignmentsArray);




$result = $graphServiceClient->deviceManagement()->complianceManagementPartners()->post($requestBody);


```