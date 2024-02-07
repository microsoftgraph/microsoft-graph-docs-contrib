---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new MembersRequestBuilderGetRequestConfiguration();
$queryParameters = MembersRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "roles/any(r:r eq 'owner')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->teams()->byTeamId('team-id')->members()->get($requestConfiguration)->wait();

```