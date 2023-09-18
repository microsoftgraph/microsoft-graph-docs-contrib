---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PrintTaskDefinition();
$requestBody->setDisplayName('Test TaskDefinitionName');
$createdBy = new AppIdentity();
$createdBy->setDisplayName('Requesting App Display Name');
$requestBody->setCreatedBy($createdBy);

$result = $graphServiceClient->escapedPrint()->taskDefinitions()->post($requestBody)->wait();

```