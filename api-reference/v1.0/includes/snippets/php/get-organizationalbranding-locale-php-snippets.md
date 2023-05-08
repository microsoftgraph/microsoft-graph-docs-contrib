---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new BrandingRequestBuilderGetRequestConfiguration();
$headers = [
		'Accept-Language' => 'fr-FR',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->organizationById('organization-id')->branding()->get($requestConfiguration);


```