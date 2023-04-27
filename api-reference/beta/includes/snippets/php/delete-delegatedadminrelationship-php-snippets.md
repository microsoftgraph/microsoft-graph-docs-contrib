---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new DelegatedAdminRelationshipRequestBuilderDeleteRequestConfiguration();
$headers = [
		'If-Match' => 'W/"JyI0NzAwNjg0NS0wMDAwLTE5MDAtMDAwMC02MGY0Yjg4MzAwMDAiJw=="',
	];
$requestConfiguration->headers = $headers;


$graphServiceClient->tenantRelationships()->delegatedAdminRelationshipsById('delegatedAdminRelationship-id')->delete($requestConfiguration);


```