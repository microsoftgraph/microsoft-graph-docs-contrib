---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\DirectoryObjects\Item\GetMemberGroups\GetMemberGroupsPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GetMemberGroupsPostRequestBody();
$requestBody->setSecurityEnabledOnly(false);

$result = $graphServiceClient->directoryObjects()->byDirectoryObjectId('directoryObject-id')->getMemberGroups()->post($requestBody)->wait();

```