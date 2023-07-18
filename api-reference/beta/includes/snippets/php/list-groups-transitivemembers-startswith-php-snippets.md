---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new UserRequestBuilderGetRequestConfiguration();
$headers = [
		'ConsistencyLevel' => 'eventual',
	];
$requestConfiguration->headers = $headers;

$queryParameters = UserRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->count = true;
$queryParameters->orderby = ["displayName"];
$queryParameters->filter = "startswith(displayName, 'a')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->groups()->byGroupId('group-id')->transitiveMembers()->graphUser()->get($requestConfiguration);


```