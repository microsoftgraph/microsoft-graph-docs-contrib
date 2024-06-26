---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Security\Incidents\IncidentsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new IncidentsRequestBuilderGetRequestConfiguration();
$queryParameters = IncidentsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["alerts"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->security()->incidents()->get($requestConfiguration)->wait();

```