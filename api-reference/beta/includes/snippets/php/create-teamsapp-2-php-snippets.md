---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new TeamsAppsRequestBuilderPostRequestConfiguration();
$queryParameters = TeamsAppsRequestBuilderPostRequestConfiguration::createQueryParameters();
$queryParameters->requiresReview = "true";
$requestConfiguration->queryParameters = $queryParameters;


$graphServiceClient->appCatalogs()->teamsApps()->post($requestConfiguration);


```