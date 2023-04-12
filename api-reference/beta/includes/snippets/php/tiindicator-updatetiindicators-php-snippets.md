---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UpdateTiIndicatorsPostRequestBody();
$valueTiIndicator1 = new TiIndicator();
$valueTiIndicator1->setId('c6fb948b-89c5-3bba-a2cd-a9d9a1e430e4');

$valueTiIndicator1->setAdditionalInformation('mytest');


$valueArray []= $valueTiIndicator1;
$valueTiIndicator2 = new TiIndicator();
$valueTiIndicator2->setId('e58c072b-c9bb-a5c4-34ce-eb69af44fb1e');

$valueTiIndicator2->setAdditionalInformation('test again');


$valueArray []= $valueTiIndicator2;
$requestBody->setValue($valueArray);




$result = $graphServiceClient->security()->tiIndicators()->updateTiIndicators()->post($requestBody);


```