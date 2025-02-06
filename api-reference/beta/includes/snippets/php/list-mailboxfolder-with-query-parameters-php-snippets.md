---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Admin\Exchange\Mailboxes\Item\Folders\FoldersRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new FoldersRequestBuilderGetRequestConfiguration();
$queryParameters = FoldersRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "type eq 'IPF.Appointment'";
$queryParameters->select = ["displayName","type"];
$queryParameters->top = 5;
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->admin()->exchange()->mailboxes()->byMailboxId('mailbox-id')->folders()->get($requestConfiguration)->wait();

```