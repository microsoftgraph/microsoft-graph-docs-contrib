---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\IdentityGovernance\AccessReviews\Definitions\DefinitionsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new DefinitionsRequestBuilderGetRequestConfiguration();
$queryParameters = DefinitionsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "contains(scope/microsoft.graph.accessReviewQueryScope/query, './members')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->accessReviews()->definitions()->get($requestConfiguration)->wait();

```