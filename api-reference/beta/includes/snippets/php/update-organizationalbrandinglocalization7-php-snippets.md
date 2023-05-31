---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new OrganizationalBrandingLocalization();
$requestBody->setSignInPageText('Welcome to Contoso France.');

$requestBody->setUsernameHintText(' ');



$result = $graphServiceClient->organization()->byOrganization()Id('organization-id')->branding()->localizations()->byLocalizationId('organizationalBrandingLocalization-id')->patch($requestBody);


```