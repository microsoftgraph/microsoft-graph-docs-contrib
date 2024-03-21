---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new FilteringPolicy();
$requestBody->setName('Block Social');
$policyRulesPolicyRule1 = new WebCategoryFilteringRule();
$policyRulesPolicyRule1->setOdataType('#microsoft.graph.networkaccess.webCategoryFilteringRule');
$policyRulesPolicyRule1->setName('Block Social');
$policyRulesPolicyRule1->setRuleType(new NetworkDestinationType('webCategory'));
$destinationsRuleDestination1 = new WebCategory();
$destinationsRuleDestination1->setOdataType('#microsoft.graph.networkaccess.webCategory');
$destinationsRuleDestination1->setName('SocialNetworking');
$destinationsArray []= $destinationsRuleDestination1;
$policyRulesPolicyRule1->setDestinations($destinationsArray);

$policyRulesArray []= $policyRulesPolicyRule1;
$requestBody->setPolicyRules($policyRulesArray);

$requestBody->setAction(new FilteringPolicyAction('block'));
$requestBody->setDescription('Block Social Sites');
$requestBody->setOdataType('#microsoft.graph.networkaccess.filteringPolicy');

$result = $graphServiceClient->networkAccess()->filteringPolicies()->post($requestBody)->wait();

```