---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PermissionGrantConditionSet();
$requestBody->setPermissionType(new PermissionType('delegated'));

$requestBody->setResourceApplication('00000003-0000-0000-c000-000000000000');



$result = $graphServiceClient->policies()->permissionGrantPoliciesById('permissionGrantPolicy-id')->excludes()->post($requestBody);


```