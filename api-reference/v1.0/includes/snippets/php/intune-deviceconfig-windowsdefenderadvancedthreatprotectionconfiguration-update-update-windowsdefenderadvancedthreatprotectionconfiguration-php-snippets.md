---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new WindowsDefenderAdvancedThreatProtectionConfiguration();
$requestBody->set@odatatype('#microsoft.graph.windowsDefenderAdvancedThreatProtectionConfiguration');

$requestBody->setDescription('Description value');

$requestBody->setDisplayName('Display Name value');

$requestBody->setVersion(7);

$requestBody->setAllowSampleSharing(true);

$requestBody->setEnableExpeditedTelemetryReporting(true);



$result = $graphServiceClient->deviceManagement()->deviceConfigurations()->byDeviceConfigurationId('deviceConfiguration-id')->patch($requestBody);


```