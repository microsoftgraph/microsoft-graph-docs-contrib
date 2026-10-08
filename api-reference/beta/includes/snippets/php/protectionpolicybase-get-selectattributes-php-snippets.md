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

$queryParameters = ProtectionPolicyBaseItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","displayName","status","protectionPolicyArtifactCount"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->solutions()->backupRestore()->protectionPolicies()->byProtectionPolicyBaseId('protectionPolicyBase-id')->get($requestConfiguration)->wait();

```