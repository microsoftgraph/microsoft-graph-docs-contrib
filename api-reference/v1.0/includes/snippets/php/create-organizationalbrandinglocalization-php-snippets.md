---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OrganizationalBrandingLocalization();
$requestBody->setBackgroundColor('#00000F');
$requestBody->setId('fr-FR');
$requestBody->setSignInPageText(' ');

$result = $graphServiceClient->organization()->byOrganizationId('organization-id')->branding()->localizations()->post($requestBody)->wait();

```