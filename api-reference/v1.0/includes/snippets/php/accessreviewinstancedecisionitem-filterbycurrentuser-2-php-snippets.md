---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new AccessReviewInstanceDecisionItemRequestBuilderGetRequestConfiguration();
$queryParameters = AccessReviewInstanceDecisionItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["accessReviewId","reviewedDateTime","decision","justification","recommendation","reviewedBy","target"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->accessReviews()->definitions()->byDefinitionId('accessReviewScheduleDefinition-id')->instances()->byInstanceId('accessReviewInstance-id')->stages()->byStageId('accessReviewStage-id')->decisions()->byDecisionId('accessReviewInstanceDecisionItem-id')->get($requestConfiguration);


```