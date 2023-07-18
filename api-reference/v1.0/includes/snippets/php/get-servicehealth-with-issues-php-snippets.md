---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ServiceHealthRequestBuilderGetRequestConfiguration();
$queryParameters = ServiceHealthRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["issues"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->admin()->serviceAnnouncement()->healthOverviews()->byServiceHealthId('serviceHealth-id')->get($requestConfiguration);


```