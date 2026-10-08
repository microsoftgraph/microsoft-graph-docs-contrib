---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ExternalAuthenticationMethod;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExternalAuthenticationMethod();
$requestBody->setOdataType('#microsoft.graph.externalAuthenticationMethod');
$requestBody->setConfigurationId('26310fee-860b-4eab-8749-ab730dcf335e');
$requestBody->setDisplayName('Adatum');

$result = $graphServiceClient->users()->byUserId('user-id')->authentication()->externalAuthenticationMethods()->post($requestBody)->wait();

```