---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new UserScopeTeamsAppInstallationItemRequestBuilderGetRequestConfiguration();
$queryParameters = UserScopeTeamsAppInstallationItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["teamsAppDefinition"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->users()->byUserId('user-id')->teamwork()->installedApps()->byUserScopeTeamsAppInstallationId('userScopeTeamsAppInstallation-id')->get($requestConfiguration)->wait();

```