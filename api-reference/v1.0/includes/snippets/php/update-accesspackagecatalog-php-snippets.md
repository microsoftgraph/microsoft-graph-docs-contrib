---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessPackageCatalog();
$requestBody->setDisplayName('Catalog One');



$result = $graphServiceClient->identityGovernance()->entitlementManagement()->catalogsById('accessPackageCatalog-id')->patch($requestBody);


```