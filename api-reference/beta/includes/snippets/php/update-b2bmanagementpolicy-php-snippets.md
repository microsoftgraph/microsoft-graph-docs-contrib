---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\B2bManagementPolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new B2bManagementPolicy();
$requestBody->setOdataType('#microsoft.graph.b2bManagementPolicy');
$requestBody->setDescription('Policy used for B2B features');
$requestBody->setDisplayName('Policy1');
$requestBody->setDefinition(['{\'B2BManagementPolicy\':{\'Version\':1}}', 	]);
$requestBody->setIsOrganizationDefault(true);

$result = $graphServiceClient->policies()->b2bManagementPolicies()->byB2bManagementPolicyId('b2bManagementPolicy-id')->patch($requestBody)->wait();

```