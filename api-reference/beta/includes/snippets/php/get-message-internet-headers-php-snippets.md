---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new MessageRequestBuilderGetRequestConfiguration();

$queryParameters = new MessageRequestBuilderGetQueryParameters();
$queryParameters->select = ["internetMessageHeaders"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->me()->messagesById('message-id')->get($requestConfiguration);


```