---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\OrganizationalBrandingLocalization;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OrganizationalBrandingLocalization();
$requestBody->setBackgroundColor('#00000F');
$requestBody->setId('fr-FR');
$requestBody->setSignInPageText(' ');

$result = $graphServiceClient->organization()->byOrganizationId('organization-id')->branding()->localizations()->post($requestBody)->wait();

```