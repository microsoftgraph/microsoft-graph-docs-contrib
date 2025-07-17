---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\CustomClaimsPolicy;
use Microsoft\Graph\Beta\Generated\Models\CustomClaimBase;
use Microsoft\Graph\Beta\Generated\Models\CustomClaim;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CustomClaimsPolicy();
$requestBody->setOdataType('#microsoft.graph.customClaimsPolicy');
$requestBody->setIncludeBasicClaimSet(boolean);
$requestBody->setIncludeApplicationIdInIssuer(boolean);
$requestBody->setAudienceOverride('String');
$claimsCustomClaimBase1 = new CustomClaim();
$claimsCustomClaimBase1->setOdataType('microsoft.graph.customClaim');
$claimsArray []= $claimsCustomClaimBase1;
$requestBody->setClaims($claimsArray);


$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->claimsPolicy()->put($requestBody)->wait();

```