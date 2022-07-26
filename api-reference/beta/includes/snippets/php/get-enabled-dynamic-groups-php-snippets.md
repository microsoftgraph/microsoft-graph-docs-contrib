---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new GroupsRequestBuilderGetRequestConfiguration();

$queryParameters = new GroupsRequestBuilderGetQueryParameters();
$queryParameters->filter = "mailEnabled eq false and securityEnabled eq true and NOT) and membershipRuleProcessingState eq 'On'";
$queryParameters->count = true;
$queryParameters->select = ["id","membershipRule","membershipRuleProcessingState"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->groups()->get($requestConfiguration);


```