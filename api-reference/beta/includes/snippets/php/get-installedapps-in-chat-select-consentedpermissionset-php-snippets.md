---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new TeamsAppInstallationRequestBuilderGetRequestConfiguration();
$queryParameters = TeamsAppInstallationRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["consentedPermissionSet","id"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->chatsById('chat-id')->installedAppsById('teamsAppInstallation-id')->get($requestConfiguration);


```