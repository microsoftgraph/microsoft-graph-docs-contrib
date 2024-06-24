---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Teams\TeamsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new TeamsRequestBuilderGetRequestConfiguration();
$queryParameters = TeamsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "displayName eq 'A Contoso Team'";
$queryParameters->select = ["id","description"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->teams()->get($requestConfiguration)->wait();

```