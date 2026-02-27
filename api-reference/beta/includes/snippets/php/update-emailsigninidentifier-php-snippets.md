---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\EmailSignInIdentifier;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EmailSignInIdentifier();
$requestBody->setOdataType('#microsoft.graph.emailSignInIdentifier');
$requestBody->setName('Email');
$requestBody->setIsEnabled(true);

$result = $graphServiceClient->identity()->signInIdentifiers()->bySignInIdentifierBaseName('signInIdentifierBase-name')->patch($requestBody)->wait();

```