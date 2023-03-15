---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new RemoveHoldPostRequestBody();
$requestBody->setIds(['7f697316-43ed-48e1-977f-261be050db93', 'b26888b3-e1f5-47c5-bdf2-33d1b90cb2e8', ]);



$graphServiceClient->security()->cases()->ediscoveryCasesById('ediscoveryCase-id')->custodians()->securityRemoveHold()->post($requestBody);


```