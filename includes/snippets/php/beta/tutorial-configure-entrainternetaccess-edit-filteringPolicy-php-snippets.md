---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\FqdnFilteringRule;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\Fqdn;

$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new FqdnFilteringRule();
$requestBody->setDestinations([
    (new Fqdn())->setValue('bing.com'),
    (new Fqdn())->setValue('*.bing.com'),
    (new Fqdn())->setValue('bing.co.uk'),
]);

$result = $graphServiceClient->networkAccess()->filteringPolicies('cccccccc-2222-3333-4444-dddddddddddd')->policyRules('{policyRuleId}')->patch($requestBody)->wait();

```
