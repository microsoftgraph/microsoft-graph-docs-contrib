---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Security\Alerts_v2\Alerts_v2RequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new Alerts_v2RequestBuilderGetRequestConfiguration();
$queryParameters = Alerts_v2RequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "serviceSource eq 'microsoftSentinel'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->security()->alerts_v2()->get($requestConfiguration)->wait();

```