---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SynchronizationJob();
$requestBody->setTemplateId('BoxOutDelta');



$result = $graphServiceClient->servicePrincipalsById('servicePrincipal-id')->synchronization()->jobs()->post($requestBody);


```