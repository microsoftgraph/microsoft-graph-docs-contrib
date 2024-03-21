---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ChildFoldersRequestBuilderGetRequestConfiguration();
$queryParameters = ChildFoldersRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->includeHiddenFolders = "true";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->mailFolders()->byMailFolderId('mailFolder-id')->childFolders()->get($requestConfiguration)->wait();

```