---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GetMemberObjectsPostRequestBody();
$requestBody->setSecurityEnabledOnly(true);

$result = $graphServiceClient->directoryObjects()->byDirectoryObjectId('directoryObject-id')->getMemberObjects()->post($requestBody)->wait();

```