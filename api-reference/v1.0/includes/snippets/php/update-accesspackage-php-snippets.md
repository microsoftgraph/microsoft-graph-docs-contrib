---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessPackage();
$requestBody->setDisplayName('Access Package New Name');



$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackagesById('accessPackage-id')->patch($requestBody);


```