---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\TeamsAppSettings;
use Microsoft\Graph\Beta\Generated\Models\CustomAppSettings;
use Microsoft\Graph\Beta\Generated\Models\AppDevelopmentPlatforms;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TeamsAppSettings();
$requestBody->setOdataType('#microsoft.graph.teamsAppSettings');
$customAppSettings = new CustomAppSettings();
$customAppSettings->setDeveloperToolsForShowingAppUsageMetrics(new AppDevelopmentPlatforms('developerPortal'));
$requestBody->setCustomAppSettings($customAppSettings);

$result = $graphServiceClient->teamwork()->teamsAppSettings()->patch($requestBody)->wait();

```