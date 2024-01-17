---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UpgradePostRequestBody();

$graphServiceClient->teams()->byTeamId('team-id')->installedApps()->byTeamsAppInstallationId('teamsAppInstallation-id')->upgrade()->post($requestBody)->wait();

```