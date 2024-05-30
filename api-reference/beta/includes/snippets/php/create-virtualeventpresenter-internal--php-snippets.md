---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\VirtualEventPresenter;
use Microsoft\Graph\Beta\Generated\Models\CommunicationsUserIdentity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new VirtualEventPresenter();
$identity = new CommunicationsUserIdentity();
$identity->setOdataType('#microsoft.graph.communicationsUserIdentity');
$identity->setId('7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b');
$requestBody->setIdentity($identity);

$result = $graphServiceClient->solutions()->virtualEvents()->townhalls()->byVirtualEventTownhallId('virtualEventTownhall-id')->presenters()->post($requestBody)->wait();

```