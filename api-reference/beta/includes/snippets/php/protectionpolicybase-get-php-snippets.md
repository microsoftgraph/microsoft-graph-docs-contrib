---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Solutions\BackupRestore\ProtectionPolicies\Item\ProtectionPolicyBaseItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ProtectionPolicyBaseItemRequestBuilderGetRequestConfiguration();
$headers = [
		'Authorization' => 'Bearer <Access-Token>',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->solutions()->backupRestore()->protectionPolicies()->byProtectionPolicyBaseId('protectionPolicyBase-id')->get($requestConfiguration)->wait();

```