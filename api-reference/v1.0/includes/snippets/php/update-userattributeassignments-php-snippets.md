---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\IdentityUserFlowAttributeAssignment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IdentityUserFlowAttributeAssignment();
$requestBody->setUserInputType(new IdentityUserFlowAttributeInputType('textBox'));

$result = $graphServiceClient->identity()->b2xUserFlows()->byB2xIdentityUserFlowId('b2xIdentityUserFlow-id')->userAttributeAssignments()->byIdentityUserFlowAttributeAssignmentId('identityUserFlowAttributeAssignment-id')->patch($requestBody)->wait();

```