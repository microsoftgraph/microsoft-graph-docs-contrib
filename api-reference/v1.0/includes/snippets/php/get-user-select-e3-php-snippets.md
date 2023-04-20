---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new UserRequestBuilderGetRequestConfiguration();
$queryParameters = UserRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["displayName","givenName","postalCode","identities"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->usersById('user-id')->get($requestConfiguration);


```