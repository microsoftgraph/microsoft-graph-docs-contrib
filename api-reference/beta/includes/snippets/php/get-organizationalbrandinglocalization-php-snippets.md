---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->organization()->byOrganizationId('organization-id')->branding()->localizations()->byOrganizationalBrandingLocalizationId('organizationalBrandingLocalization-id')->get()->wait();

```