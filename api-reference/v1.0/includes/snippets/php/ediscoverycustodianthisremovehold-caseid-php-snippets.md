---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new RemoveHoldPostRequestBody();
$requestBody->setIds(['39333641443238353535383731453339', '46333131344239353834433430454335', ]);



$graphServiceClient->security()->cases()->ediscoveryCasesById('ediscoveryCase-id')->noncustodialDataSources()->securityRemoveHold()->post($requestBody);


```