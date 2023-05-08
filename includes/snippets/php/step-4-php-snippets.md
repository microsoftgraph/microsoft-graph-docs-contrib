---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new MessagesRequestBuilderGetRequestConfiguration();
$queryParameters = MessagesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->top = 2;
$queryParameters->filter = "lastModifiedDateTime gt 2021-03-17T07:13:28.000z";
$queryParameters->orderby = ["createdDateTime desc"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->usersById('user-id')->chatsById('chat-id')->messages()->get($requestConfiguration);


```