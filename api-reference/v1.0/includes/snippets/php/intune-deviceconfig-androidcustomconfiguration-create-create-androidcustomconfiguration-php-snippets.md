---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AndroidCustomConfiguration();
$requestBody->set@odatatype('#microsoft.graph.androidCustomConfiguration');

$requestBody->setDescription('Description value');

$requestBody->setDisplayName('Display Name value');

$requestBody->setVersion(7);

$omaSettingsOmaSetting1 = new OmaSetting();
$omaSettingsOmaSetting1->set@odatatype('microsoft.graph.omaSetting');

$omaSettingsOmaSetting1->setDisplayName('Display Name value');

$omaSettingsOmaSetting1->setDescription('Description value');

$omaSettingsOmaSetting1->setOmaUri('Oma Uri value');


$omaSettingsArray []= $omaSettingsOmaSetting1;
$requestBody->setOmaSettings($omaSettingsArray);




$result = $graphServiceClient->deviceManagement()->deviceConfigurations()->post($requestBody);


```