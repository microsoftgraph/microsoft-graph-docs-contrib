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
$requestBody->setTemplateId('d209f6fa-3839-4d70-b83f-60b1c64d0e8f');
$valuesSettingValue1 = new SettingValue();
$valuesSettingValue1->setName('EnableMIPLabels');
$valuesSettingValue1->setValue('true');
$valuesArray []= $valuesSettingValue1;
$requestBody->setValues($valuesArray);


$result = $graphServiceClient->settings()->post($requestBody)->wait();

```