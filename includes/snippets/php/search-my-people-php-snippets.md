---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new PeopleRequestBuilderGetRequestConfiguration();

$queryParameters = new PeopleRequestBuilderGetQueryParameters();
$queryParameters->search = "\"Irene McGowen\"";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->me()->people()->get($requestConfiguration);


```