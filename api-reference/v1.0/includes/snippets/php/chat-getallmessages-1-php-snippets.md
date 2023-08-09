---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GetAllMessagesRequestBuilderGetRequestConfiguration();
$queryParameters = GetAllMessagesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->top = 2;
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->users()->byUserId('user-id')->chats()->getAllMessages()->get($requestConfiguration);


```