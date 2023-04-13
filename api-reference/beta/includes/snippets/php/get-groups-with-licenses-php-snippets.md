---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new GroupsRequestBuilderGetRequestConfiguration();
$queryParameters = GroupsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","assignedLicenses"];
$queryParameters->filter = "assignedLicenses/any()";
$queryParameters->expand = ["members($select=id,displayName)"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->groups()->get($requestConfiguration);


```