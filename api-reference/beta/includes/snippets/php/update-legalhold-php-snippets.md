---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new LegalHold();
$requestBody->setDescription('This is a description for a legalHold');



$result = $graphServiceClient->compliance()->ediscovery()->casesById('case-id')->legalHoldsById('legalHold-id')->patch($requestBody);


```