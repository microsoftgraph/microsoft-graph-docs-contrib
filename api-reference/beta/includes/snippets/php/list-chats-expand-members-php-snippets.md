---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new ChatsRequestBuilderGetRequestConfiguration();
$queryParameters = ChatsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["members"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->usersById('user-id')->chats()->get($requestConfiguration);


```