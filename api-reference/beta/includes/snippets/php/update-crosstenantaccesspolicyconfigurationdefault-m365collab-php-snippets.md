---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\CrossTenantAccessPolicyConfigurationDefault;
use Microsoft\Graph\Beta\Generated\Models\CrossTenantAccessPolicyM365CollaborationInboundSetting;
use Microsoft\Graph\Beta\Generated\Models\CrossTenantAccessPolicyTargetConfiguration;
use Microsoft\Graph\Beta\Generated\Models\CrossTenantAccessPolicyTargetConfigurationAccessType;
use Microsoft\Graph\Beta\Generated\Models\CrossTenantAccessPolicyTarget;
use Microsoft\Graph\Beta\Generated\Models\CrossTenantAccessPolicyTargetType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CrossTenantAccessPolicyConfigurationDefault();
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

$result = $graphServiceClient->policies()->crossTenantAccessPolicy()->escapedDefault()->patch($requestBody)->wait();

```