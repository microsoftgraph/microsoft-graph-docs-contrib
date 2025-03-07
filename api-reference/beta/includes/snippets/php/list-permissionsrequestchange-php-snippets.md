---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\IdentityGovernance\PermissionsManagement\PermissionsRequestChanges\PermissionsRequestChangesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new PermissionsRequestChangesRequestBuilderGetRequestConfiguration();
$queryParameters = PermissionsRequestChangesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "modificationDateTime gt {t}";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->permissionsManagement()->permissionsRequestChanges()->get($requestConfiguration)->wait();

```