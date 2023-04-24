---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new UserRequestBuilderGetRequestConfiguration();
$headers = [
		'ConsistencyLevel' => 'eventual',
	];
$requestConfiguration->headers = $headers;

$queryParameters = UserRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->count = true;
$queryParameters->orderby = ["displayName"];
$queryParameters->search = "\"displayName:tier\"";
$queryParameters->select = ["displayName","id"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->groupsById('group-id')->transitiveMembers()->graphUser()->get($requestConfiguration);


```