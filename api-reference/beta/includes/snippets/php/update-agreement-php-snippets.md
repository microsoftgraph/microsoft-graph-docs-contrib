---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Agreement;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Agreement();
$requestBody->setDisplayName('All Contoso volunteers - Terms of use');
$requestBody->setIsViewingBeforeAcceptanceRequired(true);

$result = $graphServiceClient->identityGovernance()->termsOfUse()->agreements()->byAgreementId('agreement-id')->patch($requestBody)->wait();

```