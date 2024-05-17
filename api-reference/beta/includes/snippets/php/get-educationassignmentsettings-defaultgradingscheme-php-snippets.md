---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Education\Classes\Item\AssignmentSettings\AssignmentSettingsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AssignmentSettingsRequestBuilderGetRequestConfiguration();
$queryParameters = AssignmentSettingsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["defaultGradingScheme"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignmentSettings()->get($requestConfiguration)->wait();

```