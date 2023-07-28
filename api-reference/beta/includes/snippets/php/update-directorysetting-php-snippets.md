---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DirectorySetting();
$valuesSettingValue1 = new SettingValue();
$valuesSettingValue1->setName('CustomBlockedWordsList');

$valuesSettingValue1->setValue('Contoso');


$valuesArray []= $valuesSettingValue1;
$requestBody->setValues($valuesArray);




$result = $graphServiceClient->settings()->byDirectorySettingId('directorySetting-id')->patch($requestBody);


```