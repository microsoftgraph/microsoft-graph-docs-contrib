---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AdminAppsAndServices();
$requestBody->setOdataType('#microsoft.graph.adminAppsAndServices');

$settings = new AppsAndServicesSettings();
$settings->setOdataType('microsoft.graph.appsAndServicesSettings');

$settings->setIsOfficeStoreEnabled(false);

$settings->setIsAppAndServicesTrialEnabled(false);


$requestBody->setSettings($settings);


$result = $graphServiceClient->admin()->appsAndServices()->patch($requestBody);


```