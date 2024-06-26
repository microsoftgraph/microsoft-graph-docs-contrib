---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Sites\Item\Lists\Item\ListItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ListItemRequestBuilderGetRequestConfiguration();
$queryParameters = ListItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","name","lastModifiedDateTime"];
$queryParameters->expand = ["columns(select=name,description)","items(expand=fields(select=Name,Color,Quantity)",")"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->sites()->bySiteId('site-id')->lists()->byListId('list-id')->get($requestConfiguration)->wait();

```