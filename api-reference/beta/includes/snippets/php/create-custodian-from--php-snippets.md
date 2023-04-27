---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Custodian();
$requestBody->setEmail('AdeleV@contoso.com');

$requestBody->setApplyHoldToSources(true);



$result = $graphServiceClient->compliance()->ediscovery()->casesById('case-id')->custodians()->post($requestBody);


```