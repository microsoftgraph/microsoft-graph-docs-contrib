---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Teamwork\Sections\SectionsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new SectionsRequestBuilderGetRequestConfiguration();
$queryParameters = SectionsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["items"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->users()->byUserId('user-id')->teamwork()->sections()->get($requestConfiguration)->wait();

```