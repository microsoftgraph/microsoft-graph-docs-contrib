---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\$refDeleteRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new $refDeleteRequestBody();
$additionalData = [
	'@odata.id' => 'https://graph.microsoft.com/v1.0/directoryObjects/{id}',
];
$requestBody->setAdditionalData($additionalData);

$graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->owners()->byDirectoryObjectId('directoryObject-id')->ref()->delete($requestBody)->wait();

```