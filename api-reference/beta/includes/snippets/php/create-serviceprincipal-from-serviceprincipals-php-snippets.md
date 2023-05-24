---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ServicePrincipal();
$requestBody->setAppId('65415bb1-9267-4313-bbf5-ae259732ee12');



$result = $graphServiceClient->servicePrincipals()->post($requestBody);


```