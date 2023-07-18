---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new LegalHold();
$requestBody->setOdataType('#microsoft.graph.ediscovery.legalHold');

$requestBody->setDescription('String');

$createdBy = new IdentitySet();
$createdBy->setOdataType('microsoft.graph.identitySet');


$requestBody->setCreatedBy($createdBy);
$requestBody->setIsEnabled(boolean);

$requestBody->setStatus(new LegalHoldStatus('string'));

$requestBody->setContentQuery('String');

$requestBody->setErrors(['String', 	]);

$requestBody->setDisplayName('String');



$result = $graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->legalHolds()->post($requestBody);


```