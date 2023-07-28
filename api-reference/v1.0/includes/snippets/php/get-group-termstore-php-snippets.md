---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GroupRequestBuilderGetRequestConfiguration();
$queryParameters = GroupRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["*","parentSiteId"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->sites()->bySiteId('site-id')->termStore()->groups()->byGroupId('group-id')->get($requestConfiguration);


```