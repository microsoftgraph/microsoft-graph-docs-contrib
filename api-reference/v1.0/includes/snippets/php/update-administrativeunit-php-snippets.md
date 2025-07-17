---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AdministrativeUnit;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AdministrativeUnit();
$requestBody->setDisplayName('Executive Division');
$requestBody->setMembershipType('Dynamic');
$requestBody->setMembershipRule('(user.country -eq \"United States\")');
$requestBody->setMembershipRuleProcessingState('On');

$result = $graphServiceClient->directory()->administrativeUnits()->byAdministrativeUnitId('administrativeUnit-id')->patch($requestBody)->wait();

```