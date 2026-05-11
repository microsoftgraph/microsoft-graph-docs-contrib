---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\CustomAuthenticationExtension;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CustomAuthenticationExtension();
$requestBody->setOdataType('#microsoft.graph.onVerifiedIdClaimValidationCustomExtension');
$requestBody->setDisplayName('Verified ID Claim Validation (updated)');
$requestBody->setDescription('Updated description for Verified ID claim validation');

$result = $graphServiceClient->identity()->customAuthenticationExtensions()->byCustomAuthenticationExtensionId('customAuthenticationExtension-id')->patch($requestBody)->wait();

```