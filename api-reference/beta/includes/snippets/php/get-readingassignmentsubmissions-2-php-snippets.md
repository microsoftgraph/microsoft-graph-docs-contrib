---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Education\Reports\ReadingAssignmentSubmissions\ReadingAssignmentSubmissionsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ReadingAssignmentSubmissionsRequestBuilderGetRequestConfiguration();
$queryParameters = ReadingAssignmentSubmissionsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "submissionDateTime gt 2023-10-10T00:00:00.000Z and submissionDateTime lt 2023-10-11T00:00:00Z";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->education()->reports()->readingAssignmentSubmissions()->get($requestConfiguration)->wait();

```