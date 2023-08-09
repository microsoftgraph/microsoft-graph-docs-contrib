---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ChildFoldersRequestBuilderGetRequestConfiguration();
$queryParameters = ChildFoldersRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->includeHiddenFolders = "true";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->mailFolders()->byMailFolderId('mailFolder-id')->childFolders()->get($requestConfiguration);


```