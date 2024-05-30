---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\MailFolders\Item\ChildFolders\ChildFoldersRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ChildFoldersRequestBuilderGetRequestConfiguration();
$queryParameters = ChildFoldersRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->includeHiddenFolders = "true";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->mailFolders()->byMailFolderId('mailFolder-id')->childFolders()->get($requestConfiguration)->wait();

```