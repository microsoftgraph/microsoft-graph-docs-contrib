---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new DefinitionsRequestBuilderGetRequestConfiguration();
$queryParameters = DefinitionsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "contains(scope/microsoft.graph.accessReviewQueryScope/query, './members')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->accessReviews()->definitions()->get($requestConfiguration)->wait();

```