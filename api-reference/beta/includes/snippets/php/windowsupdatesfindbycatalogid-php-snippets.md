---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new MicrosoftFindByKbNumberWithKbNumberRequestBuilderGetRequestConfiguration();
$queryParameters = MicrosoftFindByKbNumberWithKbNumberRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["revisions(\$expand=catalogEntry,knowledgeBaseArticle)","knownIssues"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->admin()->windows()->updates()->products()->microsoftGraphWindowsUpdatesFindByKbNumberWithKbNumber(1)->get($requestConfiguration)->wait();

```