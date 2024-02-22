---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new DelegatedAdminAccessAssignmentItemRequestBuilderDeleteRequestConfiguration();
$headers = [
		'If-Match' => 'W/"JyI0NzAwNjg0NS0wMDAwLTE5MDAtMDAwMC02MGY0Yjg4MzAwMDAiJw=="',
	];
$requestConfiguration->headers = $headers;


$graphServiceClient->tenantRelationships()->delegatedAdminRelationships()->byDelegatedAdminRelationshipId('delegatedAdminRelationship-id')->accessAssignments()->byDelegatedAdminAccessAssignmentId('delegatedAdminAccessAssignment-id')->delete($requestConfiguration)->wait();

```