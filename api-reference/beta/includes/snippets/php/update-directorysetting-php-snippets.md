---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new DirectorySetting();
$valuesSettingValue1 = new SettingValue();
$valuesSettingValue1->setName('CustomBlockedWordsList');

$valuesSettingValue1->setValue('Contoso');


$valuesArray []= $valuesSettingValue1;
$requestBody->setValues($valuesArray);




$result = $graphServiceClient->settingsById('directorySetting-id')->patch($requestBody);


```