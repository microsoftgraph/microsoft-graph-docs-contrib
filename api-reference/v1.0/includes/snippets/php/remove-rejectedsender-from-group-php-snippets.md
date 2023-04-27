---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new RefRequestBuilderDeleteRequestConfiguration();
$queryParameters = RefRequestBuilderDeleteRequestConfiguration::createQueryParameters();
$queryParameters->id = "https://graph.microsoft.com/v1.0/users/{user-id}";
$requestConfiguration->queryParameters = $queryParameters;


$graphServiceClient->groupsById('group-id')->rejectedSenders()->ref()->delete($requestConfiguration);


```