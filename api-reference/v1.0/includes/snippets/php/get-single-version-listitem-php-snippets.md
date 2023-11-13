---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ListItemVersionItemRequestBuilderGetRequestConfiguration();
$queryParameters = ListItemVersionItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["fields"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->sites()->bySiteId('site-id')->lists()->byListId('list-id')->items()->byListItemId('listItem-id')->versions()->byListItemVersionId('listItemVersion-id')->get($requestConfiguration)->wait();

```