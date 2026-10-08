---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Security\EdiscoveryCaseMember;
use Microsoft\Graph\Generated\Models\Security\RecipientType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EdiscoveryCaseMember();
$requestBody->setRecipientType(new RecipientType('roleGroup'));
$requestBody->setDisplayName('Security Administrator');

$result = $graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->caseMembers()->post($requestBody)->wait();

```