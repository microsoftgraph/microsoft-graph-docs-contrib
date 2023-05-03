---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new LocalizationsRequestBuilderGetRequestConfiguration();
$queryParameters = LocalizationsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "languageTag eq 'en-us'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->solutions()->businessScenariosById('businessScenario-id')->planner()->planConfiguration()->localizations()->get($requestConfiguration);


```