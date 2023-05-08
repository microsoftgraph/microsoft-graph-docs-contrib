---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new GetAllMessagesRequestBuilderGetRequestConfiguration();
$queryParameters = GetAllMessagesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "lastModifiedDateTime gt 2019-11-01T00:00:00Z and lastModifiedDateTime lt 2021-11-01T00:00:00Z";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->teamsById('team-id')->channels()->getAllMessages()->get($requestConfiguration);


```