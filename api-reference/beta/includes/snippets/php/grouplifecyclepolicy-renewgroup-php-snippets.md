---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new RenewGroupPostRequestBody();
$requestBody->setGroupId('ffffffff-ffff-ffff-ffff-ffffffffffff');



$result = $graphServiceClient->groupLifecyclePolicies()->renewGroup()->post($requestBody);


```