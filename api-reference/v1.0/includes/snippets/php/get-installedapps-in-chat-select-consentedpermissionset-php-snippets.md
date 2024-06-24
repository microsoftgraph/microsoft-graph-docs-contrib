---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Chats\Item\InstalledApps\Item\TeamsAppInstallationItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new TeamsAppInstallationItemRequestBuilderGetRequestConfiguration();
$queryParameters = TeamsAppInstallationItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["consentedPermissionSet","id"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->chats()->byChatId('chat-id')->installedApps()->byTeamsAppInstallationId('teamsAppInstallation-id')->get($requestConfiguration)->wait();

```