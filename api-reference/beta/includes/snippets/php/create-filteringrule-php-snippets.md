---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\WebCategoryFilteringRule;
use Microsoft\Graph\Generated\Models\RuleDestination;
use Microsoft\Graph\Generated\Models\WebCategory;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WebCategoryFilteringRule();
$requestBody->setOdataType('#microsoft.graph.networkaccess.webCategoryFilteringRule');
$requestBody->setName('Block Alcohol');
$requestBody->setRuleType(new NetworkDestinationType('webCategory'));
$destinationsRuleDestination1 = new WebCategory();
$destinationsRuleDestination1->setOdataType('#microsoft.graph.networkaccess.webCategory');
$destinationsRuleDestination1->setName('AlcoholAndTobacco');
$destinationsArray []= $destinationsRuleDestination1;
$requestBody->setDestinations($destinationsArray);


$result = $graphServiceClient->networkAccess()->filteringPolicies()->byFilteringPolicyId('filteringPolicy-id')->policyRules()->post($requestBody)->wait();

```