---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\CustomUsernameSignInIdentifier;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CustomUsernameSignInIdentifier();
$requestBody->setOdataType('#microsoft.graph.customUsernameSignInIdentifier');
$requestBody->setName('CustomUsername1');
$requestBody->setIsEnabled(true);
$requestBody->setValidationRegex('^[a-zA-Z]{4}\d{5}$');

$result = $graphServiceClient->identity()->signInIdentifiers()->bySignInIdentifierBaseName('signInIdentifierBase-name')->patch($requestBody)->wait();

```