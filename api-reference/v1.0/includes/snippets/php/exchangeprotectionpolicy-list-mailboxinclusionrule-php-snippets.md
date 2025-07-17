---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Solutions\BackupRestore\ExchangeProtectionPolicies\Item\MailboxInclusionRules\MailboxInclusionRulesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new MailboxInclusionRulesRequestBuilderGetRequestConfiguration();
$headers = [
		'Authorization' => 'Bearer <Access-Token>',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->solutions()->backupRestore()->exchangeProtectionPolicies()->byExchangeProtectionPolicyId('exchangeProtectionPolicy-id')->mailboxInclusionRules()->get($requestConfiguration)->wait();

```