---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\ServicePrincipals\Item\DeletePasswordSingleSignOnCredentials\DeletePasswordSingleSignOnCredentialsPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeletePasswordSingleSignOnCredentialsPostRequestBody();
$requestBody->setId('5793aa3b-cca9-4794-679a240f8b58');

$graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->deletePasswordSingleSignOnCredentials()->post($requestBody)->wait();

```