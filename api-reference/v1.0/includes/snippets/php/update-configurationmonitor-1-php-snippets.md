---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ConfigurationMonitor;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ConfigurationMonitor();
$requestBody->setDisplayName('Demo Monitor Name Change');

$result = $graphServiceClient->admin()->configurationManagement()->configurationMonitors()->byConfigurationMonitorId('configurationMonitor-id')->patch($requestBody)->wait();

```