---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AdminAppsAndServices;
use Microsoft\Graph\Generated\Models\AppsAndServicesSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AdminAppsAndServices();
$requestBody->setOdataType('#microsoft.graph.adminAppsAndServices');
$settings = new AppsAndServicesSettings();
$settings->setOdataType('microsoft.graph.appsAndServicesSettings');
$settings->setIsOfficeStoreEnabled(false);
$settings->setIsAppAndServicesTrialEnabled(false);
$requestBody->setSettings($settings);

$result = $graphServiceClient->admin()->appsAndServices()->patch($requestBody)->wait();

```