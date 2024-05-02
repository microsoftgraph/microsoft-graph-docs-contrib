---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\AccessReviews\AccessReviewsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AccessReviewsRequestBuilderGetRequestConfiguration();
$queryParameters = AccessReviewsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "businessFlowTemplateId eq '6e4f3d20-c5c3-407f-9695-8460952bcc68'";
$queryParameters->top = 100;
$queryParameters->skip = 0;
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->accessReviews()->get($requestConfiguration)->wait();

```