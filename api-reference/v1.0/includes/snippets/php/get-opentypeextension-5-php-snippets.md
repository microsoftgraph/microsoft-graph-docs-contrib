---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new MessagesRequestBuilderGetRequestConfiguration();

$queryParameters = new MessagesRequestBuilderGetQueryParameters();
$queryParameters->filter = "Extensions/any";
$queryParameters->expand = ["Extensions($filter=id%20eq%20'Com.Contoso.Referral')"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->me()->messages()->get($requestConfiguration);


```