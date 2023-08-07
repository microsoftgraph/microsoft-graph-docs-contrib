---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Message();
$singleValueExtendedPropertiesSingleValueLegacyExtendedProperty1 = new SingleValueLegacyExtendedProperty();
$singleValueExtendedPropertiesSingleValueLegacyExtendedProperty1->setId('String {66f5a359-4659-4830-9070-00047ec6ac6e} Name Color');

$singleValueExtendedPropertiesSingleValueLegacyExtendedProperty1->setValue('Green');


$singleValueExtendedPropertiesArray []= $singleValueExtendedPropertiesSingleValueLegacyExtendedProperty1;
$requestBody->setSingleValueExtendedProperties($singleValueExtendedPropertiesArray);




$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->patch($requestBody);


```