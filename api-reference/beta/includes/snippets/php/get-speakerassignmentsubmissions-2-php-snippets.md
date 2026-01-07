---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Education\Reports\SpeakerAssignmentSubmissions\SpeakerAssignmentSubmissionsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new SpeakerAssignmentSubmissionsRequestBuilderGetRequestConfiguration();
$queryParameters = SpeakerAssignmentSubmissionsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "submissionDateTime gt 2025-05-28T00:00:00Z and submissionDateTime lt 2025-05-29T00:00:00Z";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->education()->reports()->speakerAssignmentSubmissions()->get($requestConfiguration)->wait();

```