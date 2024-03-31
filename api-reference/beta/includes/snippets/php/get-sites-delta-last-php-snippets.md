---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new DeltaRequestBuilderGetRequestConfiguration();
$queryParameters = DeltaRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->token = "1230919asd190410jlka";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->sites()->delta()->get($requestConfiguration)->wait();

```