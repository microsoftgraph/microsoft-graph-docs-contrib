---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EdiscoveryCase();
$requestBody->setDisplayName('My Case 1 - Renamed');

$requestBody->setDescription('Updated description');



$result = $graphServiceClient->security()->cases()->ediscoveryCasesById('ediscoveryCase-id')->patch($requestBody);


```