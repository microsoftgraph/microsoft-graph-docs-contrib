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
$queryParameters->orderby = ["createdDateTime desc"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->chatsById('chat-id')->messages()->get($requestConfiguration);


```