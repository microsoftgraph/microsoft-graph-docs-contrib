---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Solutions\BookingBusinesses\BookingBusinessesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new BookingBusinessesRequestBuilderGetRequestConfiguration();
$queryParameters = BookingBusinessesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->query = "Adventure";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->solutions()->bookingBusinesses()->get($requestConfiguration)->wait();

```