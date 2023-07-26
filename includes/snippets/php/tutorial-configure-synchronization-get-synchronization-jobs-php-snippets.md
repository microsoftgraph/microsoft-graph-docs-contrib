---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new JobsRequestBuilderGetRequestConfiguration();
$headers = [
		'Authorization' => 'Bearer {Token}',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->synchronization()->jobs()->get($requestConfiguration);


```