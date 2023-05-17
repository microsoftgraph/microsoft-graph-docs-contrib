---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UnifiedRoleManagementPolicyRule();
$requestBody->set@odatatype('#microsoft.graph.unifiedRoleManagementPolicyExpirationRule');

$requestBody->setId('Expiration_Admin_Assignment');

$target = new UnifiedRoleManagementPolicyRuleTarget();
$target->set@odatatype('microsoft.graph.unifiedRoleManagementPolicyRuleTarget');

$target->setCaller('Admin');

$target->setOperations([$target->setUnifiedRoleManagementPolicyRuleTargetOperations(new UnifiedRoleManagementPolicyRuleTargetOperations('all'));
]);

$target->setLevel('Assignment');

$target->setInheritableSettings([]);

$target->setEnforcedSettings([]);


$requestBody->setTarget($target);
$additionalData = [
'isExpirationRequired' => true,
'maximumDuration' => 'P90D', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->policies()->roleManagementPoliciesById('unifiedRoleManagementPolicy-id')->rulesById('unifiedRoleManagementPolicyRule-id')->patch($requestBody);


```