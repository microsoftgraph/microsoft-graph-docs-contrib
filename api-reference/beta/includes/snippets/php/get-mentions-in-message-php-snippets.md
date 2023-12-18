---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new MessageItemRequestBuilderGetRequestConfiguration();
$queryParameters = MessageItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["mentions"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->get($requestConfiguration)->wait();

```