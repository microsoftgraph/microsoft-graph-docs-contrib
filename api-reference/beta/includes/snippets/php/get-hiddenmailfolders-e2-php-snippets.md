---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\MailFolders\MailFoldersRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new MailFoldersRequestBuilderGetRequestConfiguration();
$queryParameters = MailFoldersRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->includeHiddenFolders = "true";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->mailFolders()->get($requestConfiguration)->wait();

```