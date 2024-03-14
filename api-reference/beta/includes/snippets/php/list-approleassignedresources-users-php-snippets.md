---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AppRoleAssignedResourcesRequestBuilderGetRequestConfiguration();
$headers = [
		'ConsistencyLevel' => 'eventual',
	];
$requestConfiguration->headers = $headers;

$queryParameters = AppRoleAssignedResourcesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["displayName","accountEnabled","servicePrincipalType","signInAudience"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->appRoleAssignedResources()->get($requestConfiguration)->wait();

```