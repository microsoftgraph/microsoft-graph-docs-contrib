---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AdministrativeUnit;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AdministrativeUnit();
$requestBody->setDisplayName('Executive Division');
$requestBody->setMembershipType('Dynamic');
$requestBody->setMembershipRule('(user.country -eq \"United States\")');
$requestBody->setMembershipRuleProcessingState('On');

$result = $graphServiceClient->administrativeUnits()->byAdministrativeUnitId('administrativeUnit-id')->patch($requestBody)->wait();

```