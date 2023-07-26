---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new MessagesRequestBuilderGetRequestConfiguration();
$queryParameters = MessagesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->orderby = ["from/emailAddress/name desc","subject"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->mailFolders()->byMailFolderId('mailFolder-id')->messages()->get($requestConfiguration);


```