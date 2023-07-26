---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new SessionsRequestBuilderGetRequestConfiguration();
$queryParameters = SessionsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["segments"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->communications()->callRecords()->byCallRecordId('callRecord-id')->sessions()->get($requestConfiguration);


```