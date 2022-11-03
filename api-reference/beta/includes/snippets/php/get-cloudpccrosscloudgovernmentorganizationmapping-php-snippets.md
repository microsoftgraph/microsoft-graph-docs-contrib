---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new CrossCloudGovernmentOrganizationMappingRequestBuilderGetRequestConfiguration();

$headers = [
	'X-MS-CloudPC-USGovCloudTenantAADToken' => '{token}',
];

$requestConfiguration->headers = $headers;


$requestResult = $graphServiceClient->deviceManagement()->virtualEndpoint()->crossCloudGovernmentOrganizationMapping()->get($requestConfiguration);


```