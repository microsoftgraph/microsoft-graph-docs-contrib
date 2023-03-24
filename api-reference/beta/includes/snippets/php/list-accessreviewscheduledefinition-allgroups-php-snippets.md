---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new DefinitionsRequestBuilderGetRequestConfiguration();

$queryParameters = new DefinitionsRequestBuilderGetQueryParameters();
$queryParameters->filter = "contains(scope/microsoft.graph.accessReviewQueryScope/query,%20'./members')";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->identityGovernance()->accessReviews()->definitions()->get($requestConfiguration);


```