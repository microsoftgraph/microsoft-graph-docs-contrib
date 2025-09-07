---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\TlsInspectionRule;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\TlsInspectionRuleSettings;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\SecurityRuleStatus;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\TlsInspectionMatchingConditions;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\TlsInspectionDestination;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\TlsInspectionFqdnDestination;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TlsInspectionRule();
$requestBody->setOdataType('#microsoft.graph.networkaccess.tlsInspectionRule');
$requestBody->setName('Contoso TLS Rule 1');
$requestBody->setPriority(100);
$requestBody->setDescription('My TLS rule');
$settings = new TlsInspectionRuleSettings();
$settings->setStatus(new SecurityRuleStatus('enabled'));
$requestBody->setSettings($settings);
$matchingConditions = new TlsInspectionMatchingConditions();
$destinationsTlsInspectionDestination1 = new TlsInspectionFqdnDestination();
$destinationsTlsInspectionDestination1->setOdataType('#microsoft.graph.networkaccess.tlsInspectionFqdnDestination');
$destinationsTlsInspectionDestination1->setValues(['www.contoso.test.com', '*.contoso.org', 	]);
$destinationsArray []= $destinationsTlsInspectionDestination1;
$destinationsTlsInspectionDestination2 = new TlsInspectionDestination();
$destinationsTlsInspectionDestination2->setOdataType('#microsoft.graph.networkaccess.tlsInspectionWebCategoriesDestination');
$additionalData = [
	'values' => [
'Entertainment', ],
];
$destinationsTlsInspectionDestination2->setAdditionalData($additionalData);
$destinationsArray []= $destinationsTlsInspectionDestination2;
$matchingConditions->setDestinations($destinationsArray);

$requestBody->setMatchingConditions($matchingConditions);
$additionalData = [
'action' => 'inspect',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->networkAccess()->tlsInspectionPolicies()->byTlsInspectionPolicyId('tlsInspectionPolicy-id')->policyRules()->post($requestBody)->wait();

```