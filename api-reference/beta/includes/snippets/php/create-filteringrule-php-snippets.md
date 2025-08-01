---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\WebCategoryFilteringRule;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\NetworkDestinationType;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\RuleDestination;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\WebCategory;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WebCategoryFilteringRule();
$requestBody->setOdataType('#microsoft.graph.networkaccess.webCategoryFilteringRule');
$requestBody->setName('Block Gambling Sites');
$requestBody->setRuleType(new NetworkDestinationType('webCategory'));
$destinationsRuleDestination1 = new WebCategory();
$destinationsRuleDestination1->setOdataType('#microsoft.graph.networkaccess.webCategory');
$destinationsRuleDestination1->setName('Gambling');
$destinationsArray []= $destinationsRuleDestination1;
$requestBody->setDestinations($destinationsArray);


$result = $graphServiceClient->networkAccess()->filteringPolicies()->byFilteringPolicyId('filteringPolicy-id')->policyRules()->post($requestBody)->wait();

```