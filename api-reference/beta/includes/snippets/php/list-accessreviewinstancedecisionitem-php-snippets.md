---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\IdentityGovernance\AccessReviews\Definitions\Item\Instances\Item\Decisions\DecisionsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new DecisionsRequestBuilderGetRequestConfiguration();
$queryParameters = DecisionsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->top = 100;
$queryParameters->skip = 0;
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->accessReviews()->definitions()->byAccessReviewScheduleDefinitionId('accessReviewScheduleDefinition-id')->instances()->byAccessReviewInstanceId('accessReviewInstance-id')->decisions()->get($requestConfiguration)->wait();

```