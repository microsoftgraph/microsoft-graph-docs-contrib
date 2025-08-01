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
$requestBody->setRecipientType(new RecipientType('roleGroup'));
$requestBody->setDisplayName('Security Administrator');

$result = $graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->caseMembers()->post($requestBody)->wait();

```