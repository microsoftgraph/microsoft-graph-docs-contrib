---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageAssignmentPolicy();
$requestBody->setDisplayName('Sales department users');

$requestBody->setDescription('All users from sales department');

$requestBody->setAllowedTargetScope(new AllowedTargetScope('specificDirectoryUsers'));

$specificAllowedTargetsSubjectSet1 = new AttributeRuleMembers();
$specificAllowedTargetsSubjectSet1->setOdataType('#microsoft.graph.attributeRuleMembers');

$specificAllowedTargetsSubjectSet1->setDescription('Membership rule for all users from sales department');

$specificAllowedTargetsSubjectSet1->setMembershipRule('(user.department -eq \"Sales\")');


$specificAllowedTargetsArray []= $specificAllowedTargetsSubjectSet1;
$requestBody->setSpecificAllowedTargets($specificAllowedTargetsArray);


$automaticRequestSettings = new AccessPackageAutomaticRequestSettings();
$automaticRequestSettings->setRequestAccessForAllowedTargets(true);

$automaticRequestSettings->setRemoveAccessWhenTargetLeavesAllowedTargets(true);

$automaticRequestSettings->setGracePeriodBeforeAccessRemoval(new \DateInterval('P7D'));


$requestBody->setAutomaticRequestSettings($automaticRequestSettings);
$accessPackage = new AccessPackage();
$accessPackage->setId('8a36831e-1527-4b2b-aff2-81259a8d8e76');


$requestBody->setAccessPackage($accessPackage);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->assignmentPolicies()->post($requestBody);


```