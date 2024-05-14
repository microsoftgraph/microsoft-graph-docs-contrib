---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\RoleManagement\DeviceManagement\RoleAssignments\RoleAssignmentsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new RoleAssignmentsRequestBuilderGetRequestConfiguration();
$queryParameters = RoleAssignmentsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = " principalIds/any(x:x eq '564ae70c-73d9-476b-820b-fb61eb7384b9')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->roleManagement()->deviceManagement()->roleAssignments()->get($requestConfiguration)->wait();

```