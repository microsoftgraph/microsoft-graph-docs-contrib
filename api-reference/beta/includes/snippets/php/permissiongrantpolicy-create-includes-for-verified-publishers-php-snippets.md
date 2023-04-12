---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PermissionGrantConditionSet();
$requestBody->setPermissionType(new PermissionType('delegated'));

$requestBody->setClientApplicationsFromVerifiedPublisherOnly(true);



$result = $graphServiceClient->policies()->permissionGrantPoliciesById('permissionGrantPolicy-id')->includes()->post($requestBody);


```