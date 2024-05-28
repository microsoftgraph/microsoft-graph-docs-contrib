---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Admin\Windows\Updates\Products\Microsoft\Graph\WindowsUpdates\FindByKbNumber(kbNumber={kbNumber})\FindByKbNumberWithKbNumberRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new MicrosoftFindByKbNumberWithKbNumberRequestBuilderGetRequestConfiguration();
$queryParameters = MicrosoftFindByKbNumberWithKbNumberRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["revisions(\$expand=catalogEntry,knowledgeBaseArticle)","knownIssues"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->admin()->windows()->updates()->products()->microsoftGraphWindowsUpdatesFindByKbNumberWithKbNumber(1)->get($requestConfiguration)->wait();

```