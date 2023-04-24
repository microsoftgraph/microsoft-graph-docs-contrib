---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new ChatRequestBuilderGetRequestConfiguration();
$queryParameters = ChatRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["lastMessagePreview"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->chatsById('chat-id')->get($requestConfiguration);


```