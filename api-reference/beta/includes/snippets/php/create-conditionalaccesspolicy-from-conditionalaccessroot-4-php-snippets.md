---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ConditionalAccessPolicy();
$requestBody->setDisplayName('Require MFA to EXO from non-complaint devices.');

$requestBody->setState(new ConditionalAccessPolicyState('enabled'));

$conditions = new ConditionalAccessConditionSet();
$conditionsApplications = new ConditionalAccessApplications();
$conditionsApplications->setIncludeApplications(['00000002-0000-0ff1-ce00-000000000000', ]);


$conditions->setApplications($conditionsApplications);
$conditionsUsers = new ConditionalAccessUsers();
$conditionsUsers->setIncludeGroups(['ba8e7ded-8b0f-4836-ba06-8ff1ecc5c8ba', ]);


$conditions->setUsers($conditionsUsers);
$conditionsDevices = new ConditionalAccessDevices();
$conditionsDevices->setIncludeDevices(['All', ]);

$conditionsDevices->setExcludeDevices(['Compliant', ]);


$conditions->setDevices($conditionsDevices);

$requestBody->setConditions($conditions);
$grantControls = new ConditionalAccessGrantControls();
$grantControls->setOperator('OR');

$grantControls->setBuiltInControls([$grantControls->setConditionalAccessGrantControl(new ConditionalAccessGrantControl('mfa'));
]);


$requestBody->setGrantControls($grantControls);


$result = $graphServiceClient->identity()->conditionalAccess()->policies()->post($requestBody);


```