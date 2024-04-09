---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\RoleManagement\Directory\RoleDefinitions\RoleDefinitionsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new RoleDefinitionsRequestBuilderGetRequestConfiguration();
$queryParameters = RoleDefinitionsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "isPrivileged eq true";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->roleManagement()->directory()->roleDefinitions()->get($requestConfiguration)->wait();

```