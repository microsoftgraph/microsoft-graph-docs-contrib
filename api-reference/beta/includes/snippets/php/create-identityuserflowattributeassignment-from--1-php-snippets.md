---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new IdentityUserFlowAttributeAssignment();
$requestBody->setIsOptional(false);

$requestBody->setRequiresVerification(false);

$requestBody->setUserInputType(new IdentityUserFlowAttributeInputType('textbox'));

$requestBody->setDisplayName('Shoe size');

$requestBody->setUserAttributeValues([]);

$userAttribute = new IdentityUserFlowAttribute();
$userAttribute->setId('extension_guid_shoeSize');


$requestBody->setUserAttribute($userAttribute);


$result = $graphServiceClient->identity()->b2cUserFlowsById('b2cIdentityUserFlow-id')->userAttributeAssignments()->post($requestBody);


```