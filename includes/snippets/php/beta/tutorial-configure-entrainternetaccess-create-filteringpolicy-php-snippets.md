---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\FilteringPolicy;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\PolicyRule;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\WebCategoryFilteringRule;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\NetworkDestinationType;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\RuleDestination;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\WebCategory;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\FqdnFilteringRule;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\Fqdn;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\FilteringPolicyAction;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new FilteringPolicy();
$requestBody->setName('AI and Bing');
$policyRulesPolicyRule1 = new WebCategoryFilteringRule();
$policyRulesPolicyRule1->setOdataType('#microsoft.graph.networkaccess.webCategoryFilteringRule');
$policyRulesPolicyRule1->setName('AI');
$policyRulesPolicyRule1->setRuleType(new NetworkDestinationType('webCategory'));
$destinationsRuleDestination1 = new WebCategory();
$destinationsRuleDestination1->setOdataType('#microsoft.graph.networkaccess.webCategory');
$destinationsRuleDestination1->setName('ArtificialIntelligence');
$destinationsArray []= $destinationsRuleDestination1;
$policyRulesPolicyRule1->setDestinations($destinationsArray);

$policyRulesArray []= $policyRulesPolicyRule1;
$policyRulesPolicyRule2 = new FqdnFilteringRule();
$policyRulesPolicyRule2->setOdataType('#microsoft.graph.networkaccess.fqdnFilteringRule');
$policyRulesPolicyRule2->setName('bing FQDNs');
$policyRulesPolicyRule2->setRuleType(new NetworkDestinationType('fqdn'));
$destinationsRuleDestination1 = new Fqdn();
$destinationsRuleDestination1->setOdataType('#microsoft.graph.networkaccess.fqdn');
$destinationsRuleDestination1->setValue('bing.com');
$destinationsArray []= $destinationsRuleDestination1;
$destinationsRuleDestination2 = new Fqdn();
$destinationsRuleDestination2->setOdataType('#microsoft.graph.networkaccess.fqdn');
$destinationsRuleDestination2->setValue('*.bing.com');
$destinationsArray []= $destinationsRuleDestination2;
$policyRulesPolicyRule2->setDestinations($destinationsArray);

$policyRulesArray []= $policyRulesPolicyRule2;
$requestBody->setPolicyRules($policyRulesArray);

$requestBody->setAction(new FilteringPolicyAction('block'));

$result = $graphServiceClient->networkAccess()->filteringPolicies()->post($requestBody)->wait();

```