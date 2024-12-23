---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\WorkforceIntegration;
use Microsoft\Graph\Generated\Models\WorkforceIntegrationEncryption;
use Microsoft\Graph\Generated\Models\WorkforceIntegrationEncryptionProtocol;
use Microsoft\Graph\Generated\Models\WorkforceIntegrationSupportedEntities;
use Microsoft\Graph\Generated\Models\EligibilityFilteringEnabledEntities;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WorkforceIntegration();
$requestBody->setDisplayName('ABCWorkforceIntegration');
$requestBody->setApiVersion(1);
$requestBody->setIsActive(true);
$encryption = new WorkforceIntegrationEncryption();
$encryption->setProtocol(new WorkforceIntegrationEncryptionProtocol('sharedSecret'));
$encryption->setSecret('My Secret');
$requestBody->setEncryption($encryption);
$requestBody->setUrl('https://ABCWorkforceIntegration.com/Contoso/');
$requestBody->setSupportedEntities(new WorkforceIntegrationSupportedEntities('shift,SwapRequest'));
$requestBody->setEligibilityFilteringEnabledEntities(new EligibilityFilteringEnabledEntities('swapRequest'));

$result = $graphServiceClient->teamwork()->workforceIntegrations()->byWorkforceIntegrationId('workforceIntegration-id')->patch($requestBody)->wait();

```