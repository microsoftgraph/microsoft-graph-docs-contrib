---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Identity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Identity();
$requestBody->setId('e811976d-83df-4cbd-8b9b-5215b18aa874');
$requestBody->setType(new IdentityType('user'));

$result = $graphServiceClient->external()->connections()->byExternalConnectionId('externalConnection-id')->groups()->byExternalGroupId('externalGroup-id')->members()->post($requestBody)->wait();

```