---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new InstancesRequestBuilderGetRequestConfiguration();
$queryParameters = InstancesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->top = 100;
$queryParameters->skip = 0;
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->accessReviews()->definitionsById('accessReviewScheduleDefinition-id')->instances()->get($requestConfiguration);


```