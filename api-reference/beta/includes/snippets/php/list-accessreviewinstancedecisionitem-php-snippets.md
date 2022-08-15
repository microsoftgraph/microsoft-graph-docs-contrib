---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new DecisionsRequestBuilderGetRequestConfiguration();

$queryParameters = new DecisionsRequestBuilderGetQueryParameters();
$queryParameters->top = 100;
$queryParameters->skip = 0;

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->identityGovernance()->accessReviews()->definitionsById('accessReviewScheduleDefinition-id')->instancesById('accessReviewInstance-id')->decisions()->get($requestConfiguration);


```