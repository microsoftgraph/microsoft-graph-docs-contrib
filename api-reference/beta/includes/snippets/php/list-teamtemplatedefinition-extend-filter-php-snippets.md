---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Teamwork\TeamTemplates\TeamTemplatesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new TeamTemplatesRequestBuilderGetRequestConfiguration();
$queryParameters = TeamTemplatesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["definitions"];
$queryParameters->filter = "definitions/any(a:a/languageTag eq 'en-US')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->teamwork()->teamTemplates()->get($requestConfiguration)->wait();

```