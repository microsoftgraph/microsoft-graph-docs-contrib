---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\IdentityUserFlowAttributeAssignment;
use Microsoft\Graph\Generated\Models\UserAttributeValuesItem;
use Microsoft\Graph\Generated\Models\IdentityUserFlowAttribute;


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

$result = $graphServiceClient->identity()->b2cUserFlows()->byB2cIdentityUserFlowId('b2cIdentityUserFlow-id')->userAttributeAssignments()->post($requestBody)->wait();

```