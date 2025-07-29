---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Admin\Exchange\Mailboxes\Item\Folders\Item\Items\Delta\DeltaRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new DeltaRequestBuilderGetRequestConfiguration();
$headers = [
		'Prefer' => 'odata.maxpagesize=2',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->admin()->exchange()->mailboxes()->byMailboxId('mailbox-id')->folders()->byMailboxFolderId('mailboxFolder-id')->items()->delta()->get($requestConfiguration)->wait();

```