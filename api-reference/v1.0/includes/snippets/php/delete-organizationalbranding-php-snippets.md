---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BrandingDeleteRequestBody();
$additionalData = [
		'id' => '0', 
];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->organization()->byOrganizationId('organization-id')->branding()->delete($requestBody);


```