---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\TeamsAppSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TeamsAppSettings();
$requestBody->setOdataType('#microsoft.graph.teamsAppSettings');
$requestBody->setIsChatResourceSpecificConsentEnabled(true);

$result = $graphServiceClient->teamwork()->teamsAppSettings()->patch($requestBody)->wait();

```