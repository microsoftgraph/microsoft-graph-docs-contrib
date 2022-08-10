---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new GroupSetting();
$requestBody->setTemplateId('62375ab9-6b52-47ed-826b-58e47e0e304b');

$valuesSettingValue1 = new SettingValue();
$additionalData = [
'name' => 'GuestUsageGuidelinesUrl', 
'value' => 'https://privacy.contoso.com/privacystatement', 
];
$valuesSettingValue1->setAdditionalData($additionalData);



$valuesArray []= $valuesSettingValue1;
$valuesSettingValue2 = new SettingValue();
$additionalData = [
'name' => 'EnableMSStandardBlockedWords', 
'value' => 'true', 
];
$valuesSettingValue2->setAdditionalData($additionalData);



$valuesArray []= $valuesSettingValue2;
$valuesSettingValue3 = new SettingValue();
$additionalData = [
'name' => 'EnableMIPLabels', 
'value' => 'true', 
];
$valuesSettingValue3->setAdditionalData($additionalData);



$valuesArray []= $valuesSettingValue3;
$valuesSettingValue4 = new SettingValue();
$additionalData = [
'name' => 'PrefixSuffixNamingRequirement', 
'value' => '[Contoso-][GroupName]', 
];
$valuesSettingValue4->setAdditionalData($additionalData);



$valuesArray []= $valuesSettingValue4;
$requestBody->setValues($valuesArray);




$requestResult = $graphServiceClient->groupSettings()->post($requestBody);


```