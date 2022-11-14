---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new TeamsAppsRequestBuilderGetRequestConfiguration();

$queryParameters = new TeamsAppsRequestBuilderGetQueryParameters();
$queryParameters->filter = "externalId eq 'cf1ba4c7-f94e-4d80-ba90-5594b641a8ee'";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->appCatalogs()->teamsApps()->get($requestConfiguration);


```