---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Sites\Item\Lists\Item\Items\Item\ListItemItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ListItemItemRequestBuilderGetRequestConfiguration();
$queryParameters = ListItemItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->token = "1230919asd190410jlka";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->sites()->bySiteId('site-id')->lists()->byListId('list-id')->items()->byListItemId('listItem-id')->get($requestConfiguration)->wait();

```