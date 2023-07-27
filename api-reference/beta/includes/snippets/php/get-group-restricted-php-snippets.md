---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GroupRequestBuilderGetRequestConfiguration();
$queryParameters = GroupRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["isManagementRestricted"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->groups()->byGroupId('group-id')->get($requestConfiguration);


```