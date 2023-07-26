---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Windows10EnterpriseModernAppManagementConfiguration();
$requestBody->set@odatatype('#microsoft.graph.windows10EnterpriseModernAppManagementConfiguration');

$requestBody->setDescription('Description value');

$requestBody->setDisplayName('Display Name value');

$requestBody->setVersion(7);

$requestBody->setUninstallBuiltInApps(true);



$result = $graphServiceClient->deviceManagement()->deviceConfigurations()->post($requestBody);


```