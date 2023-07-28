---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WindowsDefenderAdvancedThreatProtectionConfiguration();
$requestBody->setOdataType('#microsoft.graph.windowsDefenderAdvancedThreatProtectionConfiguration');

$requestBody->setDescription('Description value');

$requestBody->setDisplayName('Display Name value');

$requestBody->setVersion(7);

$requestBody->setAllowSampleSharing(true);

$requestBody->setEnableExpeditedTelemetryReporting(true);



$result = $graphServiceClient->deviceManagement()->deviceConfigurations()->post($requestBody);


```