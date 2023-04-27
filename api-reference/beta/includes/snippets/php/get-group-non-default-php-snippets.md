---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new GroupRequestBuilderGetRequestConfiguration();
$queryParameters = GroupRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["allowExternalSenders","autoSubscribeNewMembers","isSubscribedByMail","unseenCount"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->groupsById('group-id')->get($requestConfiguration);


```