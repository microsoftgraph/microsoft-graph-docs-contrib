---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Identity();
$requestBody->setId('e5477431-1038-484e-bf69-1dfedb97a110');

$requestBody->setType(new IdentityType('externalgroup'));



$result = $graphServiceClient->external()->connectionsById('externalConnection-id')->groupsById('externalGroup-id')->members()->post($requestBody);


```