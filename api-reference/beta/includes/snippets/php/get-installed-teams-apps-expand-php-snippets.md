---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new TeamsAppInstallationRequestBuilderGetRequestConfiguration();

$queryParameters = new TeamsAppInstallationRequestBuilderGetQueryParameters();
$queryParameters->expand = ["teamsAppDefinition"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->teamsById('team-id')->installedAppsById('teamsAppInstallation-id')->get($requestConfiguration);


```