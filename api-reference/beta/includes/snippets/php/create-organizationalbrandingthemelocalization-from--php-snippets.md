---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\OrganizationalBrandingThemeLocalization;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OrganizationalBrandingThemeLocalization();
$requestBody->setOdataType('#microsoft.graph.organizationalBrandingThemeLocalization');
$requestBody->setLocale('fr-FR');
$requestBody->setHeaderBackgroundColor('#3377ffff');
$requestBody->setPageBackgroundColor('#FFFF33');
$requestBody->setSignInPageText('Welcome to Contoso');
$requestBody->setUsernameHintText('ContosoUsername ');

$result = $graphServiceClient->organization()->byOrganizationId('organization-id')->branding()->themes()->byOrganizationalBrandingThemeId('organizationalBrandingTheme-id')->localizations()->post($requestBody)->wait();

```