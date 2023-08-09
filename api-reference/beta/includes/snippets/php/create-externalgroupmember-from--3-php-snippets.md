---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Identity();
$requestBody->setId('1431b9c38ee647f6a');

$requestBody->setType(new IdentityType('externalGroup'));



$result = $graphServiceClient->external()->connections()->byExternalConnectionId('externalConnection-id')->groups()->byExternalGroupId('externalGroup-id')->members()->post($requestBody);


```