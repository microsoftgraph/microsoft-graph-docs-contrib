---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new ChatsRequestBuilderGetRequestConfiguration();

$queryParameters = new ChatsRequestBuilderGetQueryParameters();
$queryParameters->orderBy = ["lastMessagePreview/createdDateTime desc"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->chats()->get($requestConfiguration);


```