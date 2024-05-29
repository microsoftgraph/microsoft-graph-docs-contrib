---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\IdentityUserFlowAttributeAssignment;
use Microsoft\Graph\Beta\Generated\Models\IdentityUserFlowAttributeInputType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IdentityUserFlowAttributeAssignment();
$requestBody->setUserInputType(new IdentityUserFlowAttributeInputType('textBox'));

$result = $graphServiceClient->identity()->b2cUserFlows()->byB2cIdentityUserFlowId('b2cIdentityUserFlow-id')->userAttributeAssignments()->byIdentityUserFlowAttributeAssignmentId('identityUserFlowAttributeAssignment-id')->patch($requestBody)->wait();

```