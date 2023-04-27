---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EdiscoveryCustodian();
$requestBody->setEmail('AdeleV@contoso.com');



$result = $graphServiceClient->security()->cases()->ediscoveryCasesById('ediscoveryCase-id')->custodians()->post($requestBody);


```