---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MobileAppCategory();
$requestBody->setOdataType('#microsoft.graph.mobileAppCategory');

$requestBody->setDisplayName('Display Name value');



$result = $graphServiceClient->deviceAppManagement()->mobileAppCategories()->post($requestBody);


```