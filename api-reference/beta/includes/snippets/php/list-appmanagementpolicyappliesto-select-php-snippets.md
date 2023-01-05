---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new AppliesToRequestBuilderGetRequestConfiguration();

$queryParameters = new AppliesToRequestBuilderGetQueryParameters();
$queryParameters->select = ["id","appId","displayName","createdDateTime"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->policies()->appManagementPoliciesById('appManagementPolicy-id')->appliesTo()->get($requestConfiguration);


```