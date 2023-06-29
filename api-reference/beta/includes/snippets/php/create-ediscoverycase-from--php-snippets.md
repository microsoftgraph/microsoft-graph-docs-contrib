---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EdiscoveryCase();
$requestBody->setDisplayName('CONTOSO LITIGATION-005');

$requestBody->setDescription('Project Bazooka');

$requestBody->setExternalId('324516');



$result = $graphServiceClient->security()->cases()->ediscoveryCases()->post($requestBody);


```