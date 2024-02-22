---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new InstalledAppsRequestBuilderGetRequestConfiguration();
$queryParameters = InstalledAppsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["teamsAppDefinition(\$expand=bot)"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->users()->byUserId('user-id')->teamwork()->installedApps()->get($requestConfiguration)->wait();

```