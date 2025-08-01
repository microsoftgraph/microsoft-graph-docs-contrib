---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\MailFolders\Item\UpdateAllMessagesReadState\UpdateAllMessagesReadStatePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UpdateAllMessagesReadStatePostRequestBody();
$requestBody->setIsRead(true);
$requestBody->setSuppressReadReceipts(true);

$graphServiceClient->me()->mailFolders()->byMailFolderId('mailFolder-id')->updateAllMessagesReadState()->post($requestBody)->wait();

```