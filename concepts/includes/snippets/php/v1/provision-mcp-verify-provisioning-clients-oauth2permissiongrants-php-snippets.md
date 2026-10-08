---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Oauth2PermissionGrants\Oauth2PermissionGrantsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new Oauth2PermissionGrantsRequestBuilderGetRequestConfiguration();
$queryParameters = Oauth2PermissionGrantsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","clientId","resourceId","scope"];
$queryParameters->filter = "clientId eq '{mcp-client-servicePrincipal}' and resourceId eq '{mcp-server-servicePrincipal}'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->oauth2PermissionGrants()->get($requestConfiguration)->wait();

```