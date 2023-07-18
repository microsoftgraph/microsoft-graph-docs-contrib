---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Message();
$multiValueExtendedPropertiesMultiValueLegacyExtendedProperty1 = new MultiValueLegacyExtendedProperty();
$multiValueExtendedPropertiesMultiValueLegacyExtendedProperty1->setId('StringArray {66f5a359-4659-4830-9070-00049ec6ac6e} Name Palette');

$multiValueExtendedPropertiesMultiValueLegacyExtendedProperty1->setValue(['Green', 'Aqua', 'Blue', ]);


$multiValueExtendedPropertiesArray []= $multiValueExtendedPropertiesMultiValueLegacyExtendedProperty1;
$requestBody->setMultiValueExtendedProperties($multiValueExtendedPropertiesArray);




$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->patch($requestBody);


```