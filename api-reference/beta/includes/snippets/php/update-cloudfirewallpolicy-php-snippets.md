---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\CloudFirewallPolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CloudFirewallPolicy();
$requestBody->setDescription('Updated policy description');

$result = $graphServiceClient->networkAccess()->cloudFirewallPolicies()->byCloudFirewallPolicyId('cloudFirewallPolicy-id')->patch($requestBody)->wait();

```