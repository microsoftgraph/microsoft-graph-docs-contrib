---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new DecisionsRequestBuilderGetRequestConfiguration();
$queryParameters = DecisionsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["insights"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->accessReviews()->definitionsById('accessReviewScheduleDefinition-id')->instancesById('accessReviewInstance-id')->decisions()->get($requestConfiguration);


```