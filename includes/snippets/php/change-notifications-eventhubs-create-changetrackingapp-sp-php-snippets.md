---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ServicePrincipal();
$requestBody->setAppId('0bf30f3b-4a52-48df-9a82-234910c4a086');



$result = $graphServiceClient->servicePrincipals()->post($requestBody);


```