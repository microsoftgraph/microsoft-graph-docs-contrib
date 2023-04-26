---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Identity();
$requestBody->setId('1431b9c38ee647f6a');

$requestBody->setType(new IdentityType('externalgroup'));



$result = $graphServiceClient->external()->connectionsById('externalConnection-id')->groupsById('externalGroup-id')->members()->post($requestBody);


```