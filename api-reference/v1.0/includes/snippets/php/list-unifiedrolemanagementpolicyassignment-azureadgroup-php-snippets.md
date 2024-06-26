---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Policies\RoleManagementPolicyAssignments\RoleManagementPolicyAssignmentsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new RoleManagementPolicyAssignmentsRequestBuilderGetRequestConfiguration();
$queryParameters = RoleManagementPolicyAssignmentsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "scopeId eq '60bba733-f09d-49b7-8445-32369aa066b3' and scopeType eq 'Group'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->policies()->roleManagementPolicyAssignments()->get($requestConfiguration)->wait();

```