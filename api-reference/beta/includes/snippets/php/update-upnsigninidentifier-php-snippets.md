---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\UpnSignInIdentifier;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UpnSignInIdentifier();
$requestBody->setOdataType('#microsoft.graph.upnSignInIdentifier');
$requestBody->setName('UPN');
$requestBody->setIsEnabled(true);

$result = $graphServiceClient->identity()->signInIdentifiers()->bySignInIdentifierBaseName('signInIdentifierBase-name')->patch($requestBody)->wait();

```