---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SetOrderPostRequestBody();
$newAssignmentOrder = new AssignmentOrder();
$newAssignmentOrder->setOrder(['City', 'extension_GUID_ShoeSize', ]);


$requestBody->setNewAssignmentOrder($newAssignmentOrder);


$graphServiceClient->identity()->b2xUserFlowsById('b2xIdentityUserFlow-id')->userAttributeAssignments()->microsoftGraphSetOrder()->post($requestBody);


```