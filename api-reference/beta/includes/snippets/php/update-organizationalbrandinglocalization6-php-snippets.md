---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OrganizationalBrandingLocalization();
$requestBody->setBackgroundColor('#00000F');
$requestBody->setSignInPageText('Welcome to Contoso France');

$result = $graphServiceClient->organization()->byOrganizationId('organization-id')->branding()->localizations()->byOrganizationalBrandingLocalizationId('organizationalBrandingLocalization-id')->patch($requestBody)->wait();

```