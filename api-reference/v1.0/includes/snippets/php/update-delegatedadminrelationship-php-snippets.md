---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new DelegatedAdminRelationship();
$requestBody->setDisplayName('Updated Contoso admin relationship');

$requestBody->setDuration(new \DateInterval('P31D'));

$customer = new DelegatedAdminRelationshipCustomerParticipant();
$customer->setTenantId('52eaad04-13a2-4a2f-9ce8-93a294fadf36');


$requestBody->setCustomer($customer);
$accessDetails = new DelegatedAdminAccessDetails();
$unifiedRolesUnifiedRole1 = new UnifiedRole();
$unifiedRolesUnifiedRole1->setRoleDefinitionId('44367163-eba1-44c3-98af-f5787879f96a');


$unifiedRolesArray []= $unifiedRolesUnifiedRole1;
$unifiedRolesUnifiedRole2 = new UnifiedRole();
$unifiedRolesUnifiedRole2->setRoleDefinitionId('29232cdf-9323-42fd-ade2-1d097af3e4de');


$unifiedRolesArray []= $unifiedRolesUnifiedRole2;
$unifiedRolesUnifiedRole3 = new UnifiedRole();
$unifiedRolesUnifiedRole3->setRoleDefinitionId('69091246-20e8-4a56-aa4d-066075b2a7a8');


$unifiedRolesArray []= $unifiedRolesUnifiedRole3;
$unifiedRolesUnifiedRole4 = new UnifiedRole();
$unifiedRolesUnifiedRole4->setRoleDefinitionId('3a2c62db-5318-420d-8d74-23affee5d9d5');


$unifiedRolesArray []= $unifiedRolesUnifiedRole4;
$accessDetails->setUnifiedRoles($unifiedRolesArray);



$requestBody->setAccessDetails($accessDetails);

$requestConfiguration = new DelegatedAdminRelationshipRequestBuilderPatchRequestConfiguration();
$headers = [
	'If-Match' => 'W/"JyI0NzAwNjg0NS0wMDAwLTE5MDAtMDAwMC02MGY0Yjg4MzAwMDAiJw=="',
];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->tenantRelationships()->delegatedAdminRelationshipsById('delegatedAdminRelationship-id')->patch($requestBody, $requestConfiguration);


```