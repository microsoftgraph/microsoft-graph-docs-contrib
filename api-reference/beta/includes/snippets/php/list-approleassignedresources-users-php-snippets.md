---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new AppRoleAssignedResourcesRequestBuilderGetRequestConfiguration();
$headers = [
		'ConsistencyLevel' => 'eventual',
	];
$requestConfiguration->headers = $headers;

$queryParameters = AppRoleAssignedResourcesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["displayName","accountEnabled","servicePrincipalType","signInAudience"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->appRoleAssignedResources()->get($requestConfiguration);


```