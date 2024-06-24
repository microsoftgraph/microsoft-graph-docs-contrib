---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Users\Item\Messages\MessagesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new MessagesRequestBuilderGetRequestConfiguration();
$queryParameters = MessagesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->orderby = ["from/emailAddress/address"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->messages()->get($requestConfiguration)->wait();

```