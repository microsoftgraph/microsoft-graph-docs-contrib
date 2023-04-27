---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new OrganizationalBranding();
$requestBody->setSignInPageText('Default');

$requestBody->setUsernameHintText('DefaultHint');


$requestConfiguration = new BrandingRequestBuilderPatchRequestConfiguration();
$headers = [
		'Accept-Language' => '0',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->organizationById('organization-id')->branding()->patch($requestBody, $requestConfiguration);


```