---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new WorkforceIntegration();
$requestBody->setDisplayName('displayName-value');

$requestBody->setApiVersion(99);

$encryption = new WorkforceIntegrationEncryption();
$encryption->setProtocol(new WorkforceIntegrationEncryptionProtocol('protocol-value'));

$encryption->setSecret('secret-value');


$requestBody->setEncryption($encryption);
$requestBody->setIsActive(true);

$requestBody->setUrl('url-value');

$requestBody->setSupportedEntities(new WorkforceIntegrationSupportedEntities('supportedentities-value'));



$result = $graphServiceClient->teamwork()->workforceIntegrations()->post($requestBody);


```