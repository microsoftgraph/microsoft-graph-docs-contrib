---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Case();
$requestBody->setDisplayName('My Case 1 - Renamed');

$requestBody->setDescription('Updated description');

$requestBody->setExternalId('Updated externalId');



$result = $graphServiceClient->compliance()->ediscovery()->casesById('case-id')->patch($requestBody);


```