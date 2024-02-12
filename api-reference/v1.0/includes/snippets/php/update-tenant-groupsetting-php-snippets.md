---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GroupSetting();
$valuesSettingValue1 = new SettingValue();
$valuesSettingValue1->setName('AllowToAddGuests');
$valuesSettingValue1->setValue('false');
$valuesArray []= $valuesSettingValue1;
$requestBody->setValues($valuesArray);


$result = $graphServiceClient->groupSettings()->byGroupSettingId('groupSetting-id')->patch($requestBody)->wait();

```