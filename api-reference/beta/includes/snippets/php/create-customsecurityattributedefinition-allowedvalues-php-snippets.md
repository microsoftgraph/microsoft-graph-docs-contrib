---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CustomSecurityAttributeDefinition();
$requestBody->setAttributeSet('Engineering');

$requestBody->setDescription('Active projects for user');

$requestBody->setIsCollection(true);

$requestBody->setIsSearchable(true);

$requestBody->setName('Project');

$requestBody->setStatus('Available');

$requestBody->setType('String');

$requestBody->setUsePreDefinedValuesOnly(true);

$allowedValuesAllowedValue1 = new AllowedValue();
$allowedValuesAllowedValue1->setId('Alpine');

$allowedValuesAllowedValue1->setIsActive(true);


$allowedValuesArray []= $allowedValuesAllowedValue1;
$allowedValuesAllowedValue2 = new AllowedValue();
$allowedValuesAllowedValue2->setId('Baker');

$allowedValuesAllowedValue2->setIsActive(true);


$allowedValuesArray []= $allowedValuesAllowedValue2;
$allowedValuesAllowedValue3 = new AllowedValue();
$allowedValuesAllowedValue3->setId('Cascade');

$allowedValuesAllowedValue3->setIsActive(true);


$allowedValuesArray []= $allowedValuesAllowedValue3;
$requestBody->setAllowedValues($allowedValuesArray);




$result = $graphServiceClient->directory()->customSecurityAttributeDefinitions()->post($requestBody);


```