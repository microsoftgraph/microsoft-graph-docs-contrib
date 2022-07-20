---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UpdateTiIndicatorsPostRequestBody();
$value1 = new ();
$additionalData = [
'id' => 'c6fb948b-89c5-3bba-a2cd-a9d9a1e430e4', 
'additionalInformation' => 'mytest', 
];
$value1->setAdditionalData($additionalData);



$valueArray []= $value1;
$value2 = new ();
$additionalData = [
'id' => 'e58c072b-c9bb-a5c4-34ce-eb69af44fb1e', 
'additionalInformation' => 'test again', 
];
$value2->setAdditionalData($additionalData);



$valueArray []= $value2;
$requestBody->setValue($valueArray);




$requestResult = $graphServiceClient->security()->tiIndicators()->updateTiIndicators()->post($requestBody);


```