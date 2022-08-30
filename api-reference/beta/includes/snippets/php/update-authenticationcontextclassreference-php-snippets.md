---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationContextClassReference;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AuthenticationContextClassReference();
$requestBody->setId('c1');
$requestBody->setDisplayName('Contoso medium');
$requestBody->setDescription('Medium protection level defined for Contoso policy');
$requestBody->setIsAvailable(true);

$result = $graphServiceClient->identity()->conditionalAccess()->authenticationContextClassReferences()->byAuthenticationContextClassReferenceId('authenticationContextClassReference-id')->patch($requestBody)->wait();

```