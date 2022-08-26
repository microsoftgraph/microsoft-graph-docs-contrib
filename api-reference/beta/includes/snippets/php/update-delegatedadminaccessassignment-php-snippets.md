---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new DelegatedAdminAccessAssignment();
$accessDetails = new DelegatedAdminAccessDetails();
$unifiedRolesUnifiedRole1 = new UnifiedRole();
$additionalData = [
'roleDefinitionId' => '88d8e3e3-8f55-4a1e-953a-9b9898b8876b', 
];
$unifiedRolesUnifiedRole1->setAdditionalData($additionalData);



$unifiedRolesArray []= $unifiedRolesUnifiedRole1;
$unifiedRolesUnifiedRole2 = new UnifiedRole();
$additionalData = [
'roleDefinitionId' => '44367163-eba1-44c3-98af-f5787879f96a', 
];
$unifiedRolesUnifiedRole2->setAdditionalData($additionalData);



$unifiedRolesArray []= $unifiedRolesUnifiedRole2;
$unifiedRolesUnifiedRole3 = new UnifiedRole();
$additionalData = [
'roleDefinitionId' => '729827e3-9c14-49f7-bb1b-9608f156bbb8', 
];
$unifiedRolesUnifiedRole3->setAdditionalData($additionalData);



$unifiedRolesArray []= $unifiedRolesUnifiedRole3;
$accessDetails->setUnifiedRoles($unifiedRolesArray);



$requestBody->setAccessDetails($accessDetails);

$requestConfiguration = new DelegatedAdminAccessAssignmentRequestBuilderPatchRequestConfiguration();

$headers = [
'If-Match' => 'W/"JyI0NzAwNjg0NS0wMDAwLTE5MDAtMDAwMC02MGY0Yjg4MzAwMDAiJw=="',
];

$requestConfiguration->headers = $headers;


$graphServiceClient->tenantRelationships()->delegatedAdminRelationshipsById('delegatedAdminRelationship-id')->accessAssignmentsById('delegatedAdminAccessAssignment-id')->patch($requestBody, $requestConfiguration);


```