---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Users\Item\MailFolders\MailFoldersRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new MailFoldersRequestBuilderGetRequestConfiguration();
$queryParameters = MailFoldersRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->includeHiddenFolders = "true";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->mailFolders()->get($requestConfiguration)->wait();

```