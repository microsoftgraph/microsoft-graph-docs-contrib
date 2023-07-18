---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PermissionGrantPolicy();
$requestBody->setDisplayName('Custom permission grant policy');



$result = $graphServiceClient->policies()->permissionGrantPolicies()->byPermissionGrantPolicyId('permissionGrantPolicy-id')->patch($requestBody);


```