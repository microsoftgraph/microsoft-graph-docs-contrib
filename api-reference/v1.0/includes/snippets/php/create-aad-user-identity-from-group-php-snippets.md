---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Identity();
$requestBody->setId('e811976d-83df-4cbd-8b9b-5215b18aa874');

$requestBody->setType(new IdentityType('user'));



$result = $graphServiceClient->external()->connectionsById('externalConnection-id')->groupsById('externalGroup-id')->members()->post($requestBody);


```