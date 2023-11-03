---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ListItemRequestBuilderGetRequestConfiguration();
$queryParameters = ListItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["name","lastModifiedDateTime"];
$queryParameters->expand = ["columns(select=name,description)","items",")"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->sites()->bySiteId('site-id')->lists()->byListId('list-id')->get($requestConfiguration)->wait();

```