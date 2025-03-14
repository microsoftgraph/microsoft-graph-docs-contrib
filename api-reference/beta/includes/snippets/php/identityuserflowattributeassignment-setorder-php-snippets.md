---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Identity\B2cUserFlows\Item\UserAttributeAssignments\SetOrder\SetOrderPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\AssignmentOrder;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SetOrderPostRequestBody();
$newAssignmentOrder = new AssignmentOrder();
$newAssignmentOrder->setOrder(['City', 'extension_GUID_ShoeSize', 	]);
$requestBody->setNewAssignmentOrder($newAssignmentOrder);

$graphServiceClient->identity()->b2cUserFlows()->byB2cIdentityUserFlowId('b2cIdentityUserFlow-id')->userAttributeAssignments()->setOrder()->post($requestBody)->wait();

```