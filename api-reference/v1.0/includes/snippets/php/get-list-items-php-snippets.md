---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Sites\Item\Lists\Item\Items\ItemsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ItemsRequestBuilderGetRequestConfiguration();
$queryParameters = ItemsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["fields(select=Name,Color,Quantity)"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->sites()->bySiteId('site-id')->lists()->byListId('list-id')->items()->get($requestConfiguration)->wait();

```