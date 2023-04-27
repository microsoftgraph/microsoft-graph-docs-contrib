---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Custodian();
$requestBody->setApplyHoldToSources(false);



$result = $graphServiceClient->compliance()->ediscovery()->casesById('case-id')->custodiansById('custodian-id')->patch($requestBody);


```