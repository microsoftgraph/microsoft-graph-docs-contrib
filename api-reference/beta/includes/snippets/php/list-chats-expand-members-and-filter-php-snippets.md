---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ChatsRequestBuilderGetRequestConfiguration();
$queryParameters = ChatsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["members"];
$queryParameters->filter = "members/any(o: o/displayname eq 'Peter Parker')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->users()->byUserId('user-id')->chats()->get($requestConfiguration);


```