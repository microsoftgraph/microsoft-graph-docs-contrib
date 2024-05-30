---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\DirectorySetting;
use Microsoft\Graph\Beta\Generated\Models\SettingValue;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DirectorySetting();
$valuesSettingValue1 = new SettingValue();
$valuesSettingValue1->setName('CustomBlockedWordsList');
$valuesSettingValue1->setValue('Contoso');
$valuesArray []= $valuesSettingValue1;
$requestBody->setValues($valuesArray);


$result = $graphServiceClient->settings()->byDirectorySettingId('directorySetting-id')->patch($requestBody)->wait();

```