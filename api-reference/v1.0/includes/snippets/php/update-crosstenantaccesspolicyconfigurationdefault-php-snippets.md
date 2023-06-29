---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CrossTenantAccessPolicyConfigurationDefault();
$b2bCollaborationOutbound = new CrossTenantAccessPolicyB2BSetting();
$b2bCollaborationOutboundUsersAndGroups = new CrossTenantAccessPolicyTargetConfiguration();
$b2bCollaborationOutboundUsersAndGroups->setAccessType(new CrossTenantAccessPolicyTargetConfigurationAccessType('blocked'));

$targetsCrossTenantAccessPolicyTarget1 = new CrossTenantAccessPolicyTarget();
$targetsCrossTenantAccessPolicyTarget1->setTarget('0be493dc-cb56-4a53-936f-9cf64410b8b0');

$targetsCrossTenantAccessPolicyTarget1->setTargetType(new CrossTenantAccessPolicyTargetType('group'));


$targetsArray []= $targetsCrossTenantAccessPolicyTarget1;
$b2bCollaborationOutboundUsersAndGroups->setTargets($targetsArray);



$b2bCollaborationOutbound->setUsersAndGroups($b2bCollaborationOutboundUsersAndGroups);
$b2bCollaborationOutboundApplications = new CrossTenantAccessPolicyTargetConfiguration();
$b2bCollaborationOutboundApplications->setAccessType(new CrossTenantAccessPolicyTargetConfigurationAccessType('blocked'));

$targetsCrossTenantAccessPolicyTarget1 = new CrossTenantAccessPolicyTarget();
$targetsCrossTenantAccessPolicyTarget1->setTarget('AllApplications');

$targetsCrossTenantAccessPolicyTarget1->setTargetType(new CrossTenantAccessPolicyTargetType('application'));


$targetsArray []= $targetsCrossTenantAccessPolicyTarget1;
$b2bCollaborationOutboundApplications->setTargets($targetsArray);



$b2bCollaborationOutbound->setApplications($b2bCollaborationOutboundApplications);

$requestBody->setB2bCollaborationOutbound($b2bCollaborationOutbound);


$result = $graphServiceClient->policies()->crossTenantAccessPolicy()->default()->patch($requestBody);


```