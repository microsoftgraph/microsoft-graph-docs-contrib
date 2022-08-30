---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Agreement();
$requestBody->setDisplayName('All Contoso volunteers - Terms of use');
$requestBody->setIsViewingBeforeAcceptanceRequired(true);

$result = $graphServiceClient->identityGovernance()->termsOfUse()->agreements()->byAgreementId('agreement-id')->patch($requestBody)->wait();

```