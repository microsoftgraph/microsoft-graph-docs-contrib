---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AccessReviewInstanceDecisionItemItemRequestBuilderGetRequestConfiguration();
$queryParameters = AccessReviewInstanceDecisionItemItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["accessReviewId","reviewedDateTime","decision","justification","recommendation","reviewedBy","target"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->accessReviews()->definitions()->byAccessReviewScheduleDefinitionId('accessReviewScheduleDefinition-id')->instances()->byAccessReviewInstanceId('accessReviewInstance-id')->stages()->byAccessReviewStageId('accessReviewStage-id')->decisions()->byAccessReviewInstanceDecisionItemId('accessReviewInstanceDecisionItem-id')->get($requestConfiguration)->wait();

```