---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IdentityUserFlowAttributeAssignment();
$requestBody->setIsOptional(false);

$requestBody->setRequiresVerification(false);

$requestBody->setUserInputType(new IdentityUserFlowAttributeInputType('textBox'));

$requestBody->setDisplayName('Shoe size');

$requestBody->setUserAttributeValues([	]);

$userAttribute = new IdentityUserFlowAttribute();
$userAttribute->setId('extension_guid_shoeSize');


$requestBody->setUserAttribute($userAttribute);


$result = $graphServiceClient->identity()->b2cUserFlows()->byB2cIdentityUserFlowId('b2cIdentityUserFlow-id')->userAttributeAssignments()->post($requestBody);


```