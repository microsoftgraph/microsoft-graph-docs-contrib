---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new ContactsRequestBuilderGetRequestConfiguration();

$queryParameters = new ContactsRequestBuilderGetQueryParameters();
$queryParameters->count = true;

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->me()->contacts()->get($requestConfiguration);


```