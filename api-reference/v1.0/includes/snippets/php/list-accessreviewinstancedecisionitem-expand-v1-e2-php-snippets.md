---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new FilterByCurrentUserWithOnRequestBuilderGetRequestConfiguration();
$queryParameters = FilterByCurrentUserWithOnRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["instance(\$expand=definition)"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->accessReviews()->decisions()->filterByCurrentUserWithOn('reviewer', )->get($requestConfiguration)->wait();

```