---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new GroupSetting();
$valuesSettingValue1 = new SettingValue();
$additionalData = [
'name' => 'AllowToAddGuests', 
'value' => 'true', 
];
$valuesSettingValue1->setAdditionalData($additionalData);



$valuesArray []= $valuesSettingValue1;
$requestBody->setValues($valuesArray);




$graphServiceClient->groupsById('group-id')->settingsById('groupSetting-id')->patch($requestBody);


```