---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EdiscoveryHoldPolicy();
$requestBody->setDescription('updated description');



$result = $graphServiceClient->security()->cases()->ediscoveryCasesById('ediscoveryCase-id')->legalHoldsById('ediscoveryHoldPolicy-id')->patch($requestBody);


```