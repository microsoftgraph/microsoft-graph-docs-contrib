---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new FilterByCurrentUserWithOnRequestBuilderGetRequestConfiguration();
$queryParameters = FilterByCurrentUserWithOnRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["instance(\$expand=definition)"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->accessReviews()->decisions()->filterByCurrentUserWithOn('reviewer', )->get($requestConfiguration)->wait();

```