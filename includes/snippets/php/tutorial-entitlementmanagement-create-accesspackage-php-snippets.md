---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessPackage();
$requestBody->setCatalogId('cec5d6ab-c75d-47c0-9c1c-92e89f66e384');

$requestBody->setDisplayName('Marketing Campaign');

$requestBody->setDescription('Access to resources for the campaign');



$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackages()->post($requestBody);


```