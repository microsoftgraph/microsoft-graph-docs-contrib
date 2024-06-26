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
$requestBody->setSignInPageText('Welcome to Contoso France');

$result = $graphServiceClient->organization()->byOrganizationId('organization-id')->branding()->localizations()->byOrganizationalBrandingLocalizationId('organizationalBrandingLocalization-id')->patch($requestBody)->wait();

```