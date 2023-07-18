---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UnifiedRoleManagementPolicyExpirationRule();
$requestBody->setOdataType('#microsoft.graph.unifiedRoleManagementPolicyExpirationRule');

$requestBody->setId('Expiration_EndUser_Assignment');

$requestBody->setIsExpirationRequired(true);

$requestBody->setMaximumDuration(new \DateInterval('PT1H45M'));

$target = new UnifiedRoleManagementPolicyRuleTarget();
$target->setOdataType('microsoft.graph.unifiedRoleManagementPolicyRuleTarget');

$target->setCaller('EndUser');

$target->setOperations([new UnifiedRoleManagementPolicyRuleTargetOperations('all'),	]);

$target->setLevel('Assignment');

$target->setInheritableSettings([	]);

$target->setEnforcedSettings([	]);


$requestBody->setTarget($target);


$result = $graphServiceClient->policies()->roleManagementPolicies()->byUnifiedRoleManagementPolicyId('unifiedRoleManagementPolicy-id')->rules()->byUnifiedRoleManagementPolicyRuleId('unifiedRoleManagementPolicyRule-id')->patch($requestBody);


```