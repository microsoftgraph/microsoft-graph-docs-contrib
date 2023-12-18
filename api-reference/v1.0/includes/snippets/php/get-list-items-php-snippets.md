---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ItemsRequestBuilderGetRequestConfiguration();
$queryParameters = ItemsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["fields(select=Name,Color,Quantity)"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->sites()->bySiteId('site-id')->lists()->byListId('list-id')->items()->get($requestConfiguration)->wait();

```