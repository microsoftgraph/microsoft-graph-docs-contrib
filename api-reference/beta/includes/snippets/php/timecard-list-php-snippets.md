---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new TimeCardsRequestBuilderGetRequestConfiguration();
$queryParameters = TimeCardsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->top = 2;
$queryParameters->filter = "state eq 'clockedOut'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->teamsById('team-id')->schedule()->timeCards()->get($requestConfiguration);


```