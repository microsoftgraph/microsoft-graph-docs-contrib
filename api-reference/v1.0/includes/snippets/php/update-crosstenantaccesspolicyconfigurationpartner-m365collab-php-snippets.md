---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\CrossTenantAccessPolicyConfigurationPartner;
use Microsoft\Graph\Generated\Models\CrossTenantAccessPolicyM365CollaborationInboundSetting;
use Microsoft\Graph\Generated\Models\CrossTenantAccessPolicyTargetConfiguration;
use Microsoft\Graph\Generated\Models\CrossTenantAccessPolicyTargetConfigurationAccessType;
use Microsoft\Graph\Generated\Models\CrossTenantAccessPolicyTarget;
use Microsoft\Graph\Generated\Models\CrossTenantAccessPolicyTargetType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CrossTenantAccessPolicyConfigurationPartner();
$m365CollaborationInbound = new CrossTenantAccessPolicyM365CollaborationInboundSetting();
$m365CollaborationInboundUsers = new CrossTenantAccessPolicyTargetConfiguration();
$m365CollaborationInboundUsers->setAccessType(new CrossTenantAccessPolicyTargetConfigurationAccessType('allowed'));
$targetsCrossTenantAccessPolicyTarget1 = new CrossTenantAccessPolicyTarget();
$targetsCrossTenantAccessPolicyTarget1->setTarget('AllUsers');
$targetsCrossTenantAccessPolicyTarget1->setTargetType(new CrossTenantAccessPolicyTargetType('user'));
$targetsArray []= $targetsCrossTenantAccessPolicyTarget1;
$m365CollaborationInboundUsers->setTargets($targetsArray);

$m365CollaborationInbound->setUsers($m365CollaborationInboundUsers);
$requestBody->setM365CollaborationInbound($m365CollaborationInbound);

$result = $graphServiceClient->policies()->crossTenantAccessPolicy()->partners()->byCrossTenantAccessPolicyConfigurationPartnerTenantId('crossTenantAccessPolicyConfigurationPartner-tenantId')->patch($requestBody)->wait();

```