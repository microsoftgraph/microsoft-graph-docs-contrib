---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AssignmentSettingsRequestBuilderGetRequestConfiguration();
$queryParameters = AssignmentSettingsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["defaultGradingScheme"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignmentSettings()->get($requestConfiguration)->wait();

```