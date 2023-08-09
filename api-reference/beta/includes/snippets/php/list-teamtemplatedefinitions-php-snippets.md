---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new TeamTemplatesRequestBuilderGetRequestConfiguration();
$queryParameters = TeamTemplatesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["definitions"];
$queryParameters->filter = "definitions/any(a:a/languageTag eq 'en-US')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->teamwork()->teamTemplates()->get($requestConfiguration);


```