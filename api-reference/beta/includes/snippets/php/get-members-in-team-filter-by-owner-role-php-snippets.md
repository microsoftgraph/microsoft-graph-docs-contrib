---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Teams\Item\Members\MembersRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new MembersRequestBuilderGetRequestConfiguration();
$queryParameters = MembersRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "roles/any(r:r eq 'owner')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->teams()->byTeamId('team-id')->members()->get($requestConfiguration)->wait();

```