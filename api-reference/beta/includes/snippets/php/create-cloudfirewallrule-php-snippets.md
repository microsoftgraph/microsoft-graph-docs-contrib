---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\CloudFirewallRule;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\CloudFirewallAction;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\CloudFirewallRuleSettings;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\SecurityRuleStatus;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\CloudFirewallMatchingConditions;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\CloudFirewallSourceMatching;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\CloudFirewallSourceAddress;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\CloudFirewallSourceIpAddress;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\CloudFirewallDestinationMatching;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\CloudFirewallDestinationAddress;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\CloudFirewallDestinationIpAddress;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\CloudFirewallProtocol;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CloudFirewallRule();
$requestBody->setOdataType('#microsoft.graph.networkaccess.cloudFirewallRule');
$requestBody->setName('Block outbound to risky destinations');
$requestBody->setDescription('Block traffic to specific IPs on common ports');
$requestBody->setPriority(100);
$requestBody->setAction(new CloudFirewallAction('block'));
$settings = new CloudFirewallRuleSettings();
$settings->setStatus(new SecurityRuleStatus('enabled'));
$requestBody->setSettings($settings);
$matchingConditions = new CloudFirewallMatchingConditions();
$matchingConditionsSources = new CloudFirewallSourceMatching();
$addressesCloudFirewallSourceAddress1 = new CloudFirewallSourceIpAddress();
$addressesCloudFirewallSourceAddress1->setOdataType('#microsoft.graph.networkaccess.cloudFirewallSourceIpAddress');
$addressesCloudFirewallSourceAddress1->setValues(['192.168.1.1', '192.168.0.0/16', '172.16.0.0-172.16.255.255', 	]);
$addressesArray []= $addressesCloudFirewallSourceAddress1;
$matchingConditionsSources->setAddresses($addressesArray);

$matchingConditionsSources->setPorts(['80', '443', '445-447', ]);
$matchingConditions->setSources($matchingConditionsSources);
$matchingConditionsDestinations = new CloudFirewallDestinationMatching();
$addressesCloudFirewallDestinationAddress1 = new CloudFirewallDestinationIpAddress();
$addressesCloudFirewallDestinationAddress1->setOdataType('#microsoft.graph.networkaccess.cloudFirewallDestinationIpAddress');
$addressesCloudFirewallDestinationAddress1->setValues(['10.0.0.1', ]);
$addressesArray []= $addressesCloudFirewallDestinationAddress1;
$matchingConditionsDestinations->setAddresses($addressesArray);

$matchingConditionsDestinations->setPorts(['80', '443', '445-447', ]);
$matchingConditionsDestinations->setProtocols(new CloudFirewallProtocol('tcp'));
$matchingConditions->setDestinations($matchingConditionsDestinations);
$requestBody->setMatchingConditions($matchingConditions);

$result = $graphServiceClient->networkAccess()->cloudFirewallPolicies()->byCloudFirewallPolicyId('cloudFirewallPolicy-id')->policyRules()->post($requestBody)->wait();

```