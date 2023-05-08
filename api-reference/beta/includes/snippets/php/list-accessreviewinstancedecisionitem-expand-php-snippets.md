---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new AccessReviewInstanceDecisionItemRequestBuilderGetRequestConfiguration();
$queryParameters = AccessReviewInstanceDecisionItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["instance($expand=definition)"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->accessReviews()->decisionsById('accessReviewInstanceDecisionItem-id')->get($requestConfiguration);


```