---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new InstalledAppsRequestBuilderGetRequestConfiguration();

$queryParameters = new InstalledAppsRequestBuilderGetQueryParameters();
$queryParameters->expand = ["teamsAppDefinition($expand=bot)"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->chatsById('chat-id')->installedApps()->get($requestConfiguration);


```