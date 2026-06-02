---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\CloudFirewallPolicy;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\CloudFirewallPolicySettings;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\CloudFirewallAction;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CloudFirewallPolicy();
$requestBody->setOdataType('#microsoft.graph.networkaccess.cloudFirewallPolicy');
$requestBody->setName('Block unauthorized egress');
$requestBody->setDescription('Policy to block unauthorized outbound connections');
$settings = new CloudFirewallPolicySettings();
$settings->setDefaultAction(new CloudFirewallAction('allow'));
$requestBody->setSettings($settings);

$result = $graphServiceClient->networkAccess()->cloudFirewallPolicies()->post($requestBody)->wait();

```