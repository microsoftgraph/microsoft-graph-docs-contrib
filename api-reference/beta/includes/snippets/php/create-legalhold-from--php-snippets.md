---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new LegalHold();
$requestBody->set@odatatype('#microsoft.graph.ediscovery.legalHold');

$requestBody->setDescription('String');

$createdBy = new IdentitySet();
$createdBy->set@odatatype('microsoft.graph.identitySet');


$requestBody->setCreatedBy($createdBy);
$requestBody->setIsEnabled(boolean);

$requestBody->setStatus(new LegalHoldStatus('string'));

$requestBody->setContentQuery('String');

$requestBody->setErrors(['String', ]);

$requestBody->setDisplayName('String');



$result = $graphServiceClient->compliance()->ediscovery()->casesById('case-id')->legalHolds()->post($requestBody);


```