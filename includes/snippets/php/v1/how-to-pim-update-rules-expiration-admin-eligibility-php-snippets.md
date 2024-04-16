---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\UnifiedRoleManagementPolicyExpirationRule;
use Microsoft\Graph\Generated\Models\UnifiedRoleManagementPolicyRuleTarget;
use Microsoft\Graph\Generated\Models\UnifiedRoleManagementPolicyRuleTargetOperations;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UnifiedRoleManagementPolicyExpirationRule();
$requestBody->setOdataType('#microsoft.graph.unifiedRoleManagementPolicyExpirationRule');
$requestBody->setId('Expiration_Admin_Eligibility');
$requestBody->setIsExpirationRequired(true);
$requestBody->setMaximumDuration(new \DateInterval('P90D'));
$target = new UnifiedRoleManagementPolicyRuleTarget();
$target->setOdataType('microsoft.graph.unifiedRoleManagementPolicyRuleTarget');
$target->setCaller('Admin');
$target->setOperations([new UnifiedRoleManagementPolicyRuleTargetOperations('all'),	]);
$target->setLevel('Eligibility');
$target->setInheritableSettings([	]);
$target->setEnforcedSettings([	]);
$requestBody->setTarget($target);

$result = $graphServiceClient->policies()->roleManagementPolicies()->byUnifiedRoleManagementPolicyId('unifiedRoleManagementPolicy-id')->rules()->byUnifiedRoleManagementPolicyRuleId('unifiedRoleManagementPolicyRule-id')->patch($requestBody)->wait();

```