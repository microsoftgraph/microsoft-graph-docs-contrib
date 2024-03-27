---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WebCategoryFilteringRule();
$requestBody->setOdataType('#microsoft.graph.networkaccess.webCategoryFilteringRule');
$requestBody->setName('Gambling and Storage cateogries');
$destinationsRuleDestination1 = new WebCategory();
$destinationsRuleDestination1->setOdataType('#microsoft.graph.networkaccess.webCategory');
$destinationsRuleDestination1->setName('Gambling');
$destinationsArray []= $destinationsRuleDestination1;
$destinationsRuleDestination2 = new WebCategory();
$destinationsRuleDestination2->setOdataType('#microsoft.graph.networkaccess.webCategory');
$destinationsRuleDestination2->setName('WebRepositoryAndStorage');
$destinationsArray []= $destinationsRuleDestination2;
$requestBody->setDestinations($destinationsArray);


$result = $graphServiceClient->networkAccess()->filteringPolicies()->byFilteringPolicyId('filteringPolicy-id')->policyRules()->byPolicyRuleId('policyRule-id')->patch($requestBody)->wait();

```