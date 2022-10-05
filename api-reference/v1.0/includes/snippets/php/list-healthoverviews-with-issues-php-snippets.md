---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new HealthOverviewsRequestBuilderGetRequestConfiguration();

$queryParameters = new HealthOverviewsRequestBuilderGetQueryParameters();
$queryParameters->expand = ["issues"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->admin()->serviceAnnouncement()->healthOverviews()->get($requestConfiguration);


```