---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Group();
$requestBody->set@odatatype('#microsoft.graph.group');

$requestBody->setDescription('Self help community for golf');

$requestBody->setDisplayName('Golf Assist');

$requestBody->setGroupTypes(['Unified', ]);

$requestBody->setMailEnabled(true);

$requestBody->setMailNickname('golfassist');

$requestBody->setSecurityEnabled(false);



$result = $graphServiceClient->directory()->administrativeUnits()->byAdministrativeUnitId('administrativeUnit-id')->members()->post($requestBody);


```