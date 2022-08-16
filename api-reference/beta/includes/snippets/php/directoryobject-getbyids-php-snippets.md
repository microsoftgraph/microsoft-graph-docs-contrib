---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new GetByIdsPostRequestBody();
$requestBody->setIds(['84b80893-8749-40a3-97b7-68513b600544', '5d6059b6-368d-45f8-91e1-8e07d485f1d0', ]);

$requestBody->setTypes(['user', ]);



$requestResult = $graphServiceClient->directoryObjects()->getByIds()->post($requestBody);


```