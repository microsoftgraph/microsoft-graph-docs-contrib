---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Windows10EnterpriseModernAppManagementConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Windows10EnterpriseModernAppManagementConfiguration();
$requestBody->setOdataType('#microsoft.graph.windows10EnterpriseModernAppManagementConfiguration');
$requestBody->setDescription('Description value');
$requestBody->setDisplayName('Display Name value');
$requestBody->setVersion(7);
$requestBody->setUninstallBuiltInApps(true);

$result = $graphServiceClient->deviceManagement()->deviceConfigurations()->post($requestBody)->wait();

```