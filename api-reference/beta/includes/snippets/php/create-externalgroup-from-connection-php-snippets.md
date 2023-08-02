---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExternalGroup();
$requestBody->setId('31bea3d537902000');

$requestBody->setDisplayName('Contoso Marketing');

$requestBody->setDescription('The product marketing team');



$result = $graphServiceClient->external()->connections()->byExternalConnectionId('externalConnection-id')->groups()->post($requestBody);


```