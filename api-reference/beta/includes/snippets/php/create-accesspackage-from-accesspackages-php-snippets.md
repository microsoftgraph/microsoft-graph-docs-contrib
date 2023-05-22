---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessPackage();
$requestBody->setCatalogId('aa2f6514-3232-46e7-a08a-2411ad8d7128');

$requestBody->setDisplayName('sales reps');

$requestBody->setDescription('outside sales representatives');



$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackages()->post($requestBody);


```