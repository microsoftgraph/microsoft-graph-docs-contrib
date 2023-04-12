---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new MailFoldersRequestBuilderGetRequestConfiguration();
$queryParameters = MailFoldersRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->includehiddenfolders = true;
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->mailFolders()->get($requestConfiguration);


```