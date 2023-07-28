---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new MembersRequestBuilderGetRequestConfiguration();
$queryParameters = MembersRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "roles/any(r:r eq 'owner')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->teams()->byTeamId('team-id')->members()->get($requestConfiguration);


```