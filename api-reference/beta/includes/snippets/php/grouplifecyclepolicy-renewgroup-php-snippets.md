---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RenewGroupPostRequestBody();
$requestBody->setGroupId('ffffffff-ffff-ffff-ffff-ffffffffffff');

$result = $graphServiceClient->groupLifecyclePolicies()->renewGroup()->post($requestBody)->wait();

```