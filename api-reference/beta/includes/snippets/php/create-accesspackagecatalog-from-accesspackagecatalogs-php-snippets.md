---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessPackageCatalog();
$requestBody->setDisplayName('sales');

$requestBody->setDescription('for employees working with sales and outside sales partners');

$requestBody->setIsExternallyVisible(true);



$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageCatalogs()->post($requestBody);


```