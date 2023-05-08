---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ServicePrincipal();
$requestBody->setPreferredTokenSigningKeyThumbprint('A7D3C4626B8A84FDA868CCC67D274D402FFD0A10');



$result = $graphServiceClient->servicePrincipalsById('servicePrincipal-id')->patch($requestBody);


```