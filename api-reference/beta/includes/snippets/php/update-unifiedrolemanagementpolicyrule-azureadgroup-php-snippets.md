---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UnifiedRoleManagementPolicyExpirationRule();
$requestBody->set@odatatype('#microsoft.graph.unifiedRoleManagementPolicyExpirationRule');

$requestBody->setId('Expiration_EndUser_Assignment');

$requestBody->setIsExpirationRequired(true);

$requestBody->setMaximumDuration(new \DateInterval('PT1H45M'));

$target = new UnifiedRoleManagementPolicyRuleTarget();
$target->setCaller('EndUser');

$target->setOperations(['All', ]);

$target->setLevel('Assignment');

$target->setInheritableSettings([]);

$target->setEnforcedSettings([]);


$requestBody->setTarget($target);


$result = $graphServiceClient->policies()->roleManagementPolicies()->byRoleManagementPolicieId('unifiedRoleManagementPolicy-id')->rules()->byRuleId('unifiedRoleManagementPolicyRule-id')->patch($requestBody);


```