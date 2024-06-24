---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Contacts\Delta\DeltaRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new DeltaRequestBuilderGetRequestConfiguration();
$queryParameters = DeltaRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["displayName","jobTitle","mail"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->contacts()->delta()->get($requestConfiguration)->wait();

```