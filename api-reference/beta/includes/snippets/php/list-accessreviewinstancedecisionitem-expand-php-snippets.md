---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new AccessReviewInstanceDecisionItemRequestBuilderGetRequestConfiguration();

$queryParameters = new AccessReviewInstanceDecisionItemRequestBuilderGetQueryParameters();
$queryParameters->expand = ["instance($expand=definition)"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->identityGovernance()->accessReviews()->decisionsById('accessReviewInstanceDecisionItem-id')->get($requestConfiguration);


```