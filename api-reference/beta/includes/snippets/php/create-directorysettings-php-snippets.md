---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new DirectorySetting();
$requestBody->setTemplateId('62375ab9-6b52-47ed-826b-58e47e0e304b');

$valuesSettingValue1 = new SettingValue();
$valuesSettingValue1->setName('GuestUsageGuidelinesUrl');

$valuesSettingValue1->setValue('https://privacy.contoso.com/privacystatement');


$valuesArray []= $valuesSettingValue1;
$valuesSettingValue2 = new SettingValue();
$valuesSettingValue2->setName('EnableMSStandardBlockedWords');

$valuesSettingValue2->setValue('true');


$valuesArray []= $valuesSettingValue2;
$valuesSettingValue3 = new SettingValue();
$valuesSettingValue3->setName('EnableMIPLabels');

$valuesSettingValue3->setValue('true');


$valuesArray []= $valuesSettingValue3;
$valuesSettingValue4 = new SettingValue();
$valuesSettingValue4->setName('PrefixSuffixNamingRequirement');

$valuesSettingValue4->setValue('[Contoso-][GroupName]');


$valuesArray []= $valuesSettingValue4;
$requestBody->setValues($valuesArray);




$result = $graphServiceClient->settings()->post($requestBody);


```