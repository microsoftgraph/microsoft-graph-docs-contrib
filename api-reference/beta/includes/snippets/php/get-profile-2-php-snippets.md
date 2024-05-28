---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Profile\ProfileRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ProfileRequestBuilderGetRequestConfiguration();
$queryParameters = ProfileRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["names(\$select=first,last)","skills(\$select=displayName)"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->profile()->get($requestConfiguration)->wait();

```