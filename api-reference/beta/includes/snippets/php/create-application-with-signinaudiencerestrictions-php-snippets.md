---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Application;
use Microsoft\Graph\Beta\Generated\Models\AllowedTenantsAudience;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Application();
$requestBody->setDisplayName('MyAppName');
$requestBody->setSignInAudience('AzureADMultipleOrgs');
$signInAudienceRestrictions = new AllowedTenantsAudience();
$signInAudienceRestrictions->setOdataType('#microsoft.graph.allowedTenantsAudience');
$signInAudienceRestrictions->setIsHomeTenantAllowed(true);
$signInAudienceRestrictions->setAllowedTenantIds(['818ce016-78c2-457c-91d7-c02c2faaa5fe', 'c62670b0-53a1-4a38-b26c-4093cbaa510a', 	]);
$requestBody->setSignInAudienceRestrictions($signInAudienceRestrictions);

$result = $graphServiceClient->applications()->post($requestBody)->wait();

```