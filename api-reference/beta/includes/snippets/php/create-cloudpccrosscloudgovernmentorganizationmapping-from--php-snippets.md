---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CrossCloudGovernmentOrganizationMappingPostRequestBody();

$requestConfiguration = new CrossCloudGovernmentOrganizationMappingRequestBuilderPostRequestConfiguration();
$headers = [
		'X-MS-CloudPC-USGovCloudTenantAADToken' => '{token}',
	];
$requestConfiguration->headers = $headers;


$graphServiceClient->deviceManagement()->virtualEndpoint()->crossCloudGovernmentOrganizationMapping()->post($requestBody, $requestConfiguration);


```