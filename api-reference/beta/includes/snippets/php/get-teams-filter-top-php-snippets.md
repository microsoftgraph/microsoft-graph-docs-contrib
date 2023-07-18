---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new TeamsRequestBuilderGetRequestConfiguration();
$queryParameters = TeamsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "startswith(displayName, 'A')";
$queryParameters->top = 2;
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->teams()->get($requestConfiguration);


```