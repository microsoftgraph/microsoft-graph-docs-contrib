---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Admin\Windows\Updates\Products\Microsoft\Graph\WindowsUpdates\FindByCatalogId(catalogID='{catalogID}')\FindByCatalogIdWithCatalogIDRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new MicrosoftFindByCatalogIdWithCatalogIDRequestBuilderGetRequestConfiguration();
$queryParameters = MicrosoftFindByCatalogIdWithCatalogIDRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["revisions(\$expand=catalogEntry,knowledgeBaseArticle)","knownIssues(\$expand=originatingKnowledgeBaseArticle,resolvingKnowledgeBaseArticle)"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->admin()->windows()->updates()->products()->microsoftGraphWindowsUpdatesFindByCatalogIdWithCatalogID('{catalogID}', )->get($requestConfiguration)->wait();

```