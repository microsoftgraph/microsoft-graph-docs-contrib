---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ChannelsRequestBuilderGetRequestConfiguration();
$queryParameters = ChannelsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "membershipType eq 'private'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->teams()->byTeamId('team-id')->channels()->get($requestConfiguration);


```