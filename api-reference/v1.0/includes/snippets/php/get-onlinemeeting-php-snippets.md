---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Communications\OnlineMeetings\OnlineMeetingsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new OnlineMeetingsRequestBuilderGetRequestConfiguration();
$queryParameters = OnlineMeetingsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "VideoTeleconferenceId eq '123456789'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->communications()->onlineMeetings()->get($requestConfiguration)->wait();

```