---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Admin\Exchange\Mailboxes\Item\Folders\Item\Items\Item\MailboxItemItemRequestBuilderDeleteRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new MailboxItemItemRequestBuilderDeleteRequestConfiguration();
$queryParameters = MailboxItemItemRequestBuilderDeleteRequestConfiguration::createQueryParameters();
$queryParameters->disposalType = "softDelete";
$requestConfiguration->queryParameters = $queryParameters;


$graphServiceClient->admin()->exchange()->mailboxes()->byMailboxId('mailbox-id')->folders()->byMailboxFolderId('mailboxFolder-id')->items()->byMailboxItemId('mailboxItem-id')->delete($requestConfiguration)->wait();

```