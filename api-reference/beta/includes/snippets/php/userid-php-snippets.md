---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\EdiscoveryCaseMember;
use Microsoft\Graph\Beta\Generated\Models\Security\RecipientType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EdiscoveryCaseMember();
$requestBody->setRecipientType(new RecipientType('user'));
$requestBody->setId('c4af6f9d-37f6-43f9-9e17-601544234146');

$result = $graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->caseMembers()->post($requestBody)->wait();

```