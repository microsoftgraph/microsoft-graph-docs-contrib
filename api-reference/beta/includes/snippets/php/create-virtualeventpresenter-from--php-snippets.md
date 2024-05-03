---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\VirtualEventPresenter;
use Microsoft\Graph\Generated\Models\Identity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new VirtualEventPresenter();
$identity = new Identity();
$identity->setId('7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b');
$additionalData = [
	'tenantId' => '77229959-e479-4a73-b6e0-ddac27be315c',
];
$identity->setAdditionalData($additionalData);
$requestBody->setIdentity($identity);
$requestBody->setEmail('kenneth.brown@contoso.com');

$result = $graphServiceClient->solutions()->virtualEvents()->townhalls()->byVirtualEventTownhallId('virtualEventTownhall-id')->presenters()->post($requestBody)->wait();

```