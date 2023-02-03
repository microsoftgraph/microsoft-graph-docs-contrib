---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new ChildFoldersRequestBuilderGetRequestConfiguration();

$queryParameters = new ChildFoldersRequestBuilderGetQueryParameters();
$queryParameters->includehiddenfolders = true;

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->me()->mailFoldersById('mailFolder-id')->childFolders()->get($requestConfiguration);


```