---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessPackageAssignmentPolicy();
$requestBody->setDisplayName('Sales department users');

$requestBody->setDescription('All users from sales department');

$requestBody->setAllowedTargetScope(new AllowedTargetScope('specificdirectoryusers'));

$specificAllowedTargetsSubjectSet1 = new SubjectSet();
$specificAllowedTargetsSubjectSet1->set@odatatype('#microsoft.graph.attributeRuleMembers');

$additionalData = [
		'description' => 'Membership rule for all users from sales department', 
		'membershipRule' => '(user.department -eq \"Sales\")', 
];
$specificAllowedTargetsSubjectSet1->setAdditionalData($additionalData);



$specificAllowedTargetsArray []= $specificAllowedTargetsSubjectSet1;
$requestBody->setSpecificAllowedTargets($specificAllowedTargetsArray);


$automaticRequestSettings = new AccessPackageAutomaticRequestSettings();
$automaticRequestSettings->setRequestAccessForAllowedTargets(true);


$requestBody->setAutomaticRequestSettings($automaticRequestSettings);
$accessPackage = new AccessPackage();
$accessPackage->setId('8a36831e-1527-4b2b-aff2-81259a8d8e76');


$requestBody->setAccessPackage($accessPackage);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->assignmentPolicies()->post($requestBody);


```