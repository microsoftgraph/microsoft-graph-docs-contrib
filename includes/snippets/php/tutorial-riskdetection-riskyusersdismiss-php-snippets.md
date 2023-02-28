---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new DismissPostRequestBody();
$requestBody->setUserIds(['4628e7df-dff3-407c-a08f-75f08c0806dc', ]);



$graphServiceClient->identityProtection()->riskyUsers()->microsoftGraphDismiss()->post($requestBody);


```