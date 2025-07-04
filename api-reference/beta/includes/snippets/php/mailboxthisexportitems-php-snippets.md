---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Admin\Exchange\Mailboxes\Item\ExportItems\ExportItemsPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExportItemsPostRequestBody();
$requestBody->setItemIds(['EDSVrdi3lRAADmpnf1AAA=', 'EDSVrdi3lRAAD45b7RAAA=', 	]);

$result = $graphServiceClient->admin()->exchange()->mailboxes()->byMailboxId('mailbox-id')->exportItems()->post($requestBody)->wait();

```