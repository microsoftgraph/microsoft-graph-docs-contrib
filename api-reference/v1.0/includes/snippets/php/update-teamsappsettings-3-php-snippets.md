---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\TeamsAppSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TeamsAppSettings();
$requestBody->setOdataType('#microsoft.graph.teamsAppSettings');
$requestBody->setIsUserPersonalScopeResourceSpecificConsentEnabled(true);

$result = $graphServiceClient->teamwork()->teamsAppSettings()->patch($requestBody)->wait();

```