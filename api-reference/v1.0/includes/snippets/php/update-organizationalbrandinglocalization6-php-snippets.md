---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new OrganizationalBrandingLocalization();
$requestBody->setBackgroundColor('#00000F');

$requestBody->setSignInPageText('Welcome to Contoso France');



$result = $graphServiceClient->organization()->byOrganization()Id('organization-id')->branding()->localizations()->byLocalizationId('organizationalBrandingLocalization-id')->patch($requestBody);


```