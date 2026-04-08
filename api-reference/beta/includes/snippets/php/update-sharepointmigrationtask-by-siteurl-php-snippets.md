---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\SharePointMigrationTask;
use Microsoft\Graph\Beta\Generated\Models\SharePointSiteMigrationTaskParameters;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SharePointMigrationTask();
$parameters = new SharePointSiteMigrationTaskParameters();
$parameters->setOdataType('#microsoft.graph.sharePointSiteMigrationTaskParameters');
$parameters->setTargetOrganizationHost('https://fabrico-my.sharepoint.com');
$parameters->setSourceSiteUrl('https://contoso.sharepoint.com/sites/IT');
$parameters->setTargetSiteUrl('https://fabrico.sharepoint.com/sites/IT');
$requestBody->setParameters($parameters);

$result = $graphServiceClient->solutions()->sharePoint()->migrations()->crossOrganizationMigrationTasks()->post($requestBody)->wait();

```