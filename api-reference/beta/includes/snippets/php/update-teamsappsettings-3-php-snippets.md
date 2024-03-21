---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TeamsAppSettings();
$requestBody->setOdataType('#microsoft.graph.teamsAppSettings');
$requestBody->setIsUserPersonalScopeResourceSpecificConsentEnabled(true);

$result = $graphServiceClient->teamwork()->teamsAppSettings()->patch($requestBody)->wait();

```