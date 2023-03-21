---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new ChannelsRequestBuilderGetRequestConfiguration();

$queryParameters = new ChannelsRequestBuilderGetQueryParameters();
$queryParameters->filter = "membershipType eq 'private'";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->teamsById('team-id')->channels()->get($requestConfiguration);


```