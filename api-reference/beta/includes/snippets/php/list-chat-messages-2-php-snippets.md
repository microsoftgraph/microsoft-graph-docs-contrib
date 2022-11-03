---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new MessagesRequestBuilderGetRequestConfiguration();

$queryParameters = new MessagesRequestBuilderGetQueryParameters();
$queryParameters->top = 2;
$queryParameters->orderBy = ["lastModifiedDateTime desc"];
$queryParameters->filter = "lastModifiedDateTime ge 2022-09-22T00:00:00.000Z and lastModifiedDateTime le 2022-09-24T00:00:00.000Z";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->chatsById('chat-id')->messages()->get($requestConfiguration);


```