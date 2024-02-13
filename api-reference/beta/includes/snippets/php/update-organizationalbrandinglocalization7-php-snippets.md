---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OrganizationalBrandingLocalization();
$requestBody->setSignInPageText('Welcome to Contoso France.');
$requestBody->setUsernameHintText(' ');

$result = $graphServiceClient->organization()->byOrganizationId('organization-id')->branding()->localizations()->byOrganizationalBrandingLocalizationId('organizationalBrandingLocalization-id')->patch($requestBody)->wait();

```