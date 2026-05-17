---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->organization()->byOrganizationId('organization-id')->branding()->themes()->byOrganizationalBrandingThemeId('organizationalBrandingTheme-id')->localizations()->byOrganizationalBrandingThemeLocalizationLocale('organizationalBrandingThemeLocalization-locale')->delete()->wait();

```