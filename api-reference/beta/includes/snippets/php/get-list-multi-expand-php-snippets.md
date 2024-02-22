---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ListItemRequestBuilderGetRequestConfiguration();
$queryParameters = ListItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["name","lastModifiedDateTime"];
$queryParameters->expand = ["columns(select=name,description)","items(expand=fields(select=Name,Color,Quantity)",")"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->sites()->bySiteId('site-id')->lists()->byListId('list-id')->get($requestConfiguration)->wait();

```