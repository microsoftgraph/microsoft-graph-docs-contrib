---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new MessagesRequestBuilderGetRequestConfiguration();

$queryParameters = new MessagesRequestBuilderGetQueryParameters();
$queryParameters->orderby = ["from/emailAddress/name desc","subject"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->me()->mailFoldersById('mailFolder-id')->messages()->get($requestConfiguration);


```