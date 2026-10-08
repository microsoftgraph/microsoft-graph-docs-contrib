---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\CustomBlockPage;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\Status;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\MarkdownBlockMessageConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CustomBlockPage();
$requestBody->setState(new Status('enabled'));
$configuration = new MarkdownBlockMessageConfiguration();
$configuration->setOdataType('#microsoft.graph.networkaccess.markdownBlockMessageConfiguration');
$configuration->setBody('Your admin at NaaSLitware has blocked your access. [Click here for NaaSLitware\'s Terms of Use](https://www.bing.com).');
$requestBody->setConfiguration($configuration);

$result = $graphServiceClient->networkAccess()->settings()->customBlockPage()->patch($requestBody)->wait();

```