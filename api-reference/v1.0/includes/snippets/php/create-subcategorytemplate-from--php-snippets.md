---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\SubcategoryTemplate;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SubcategoryTemplate();
$requestBody->setOdataType('#microsoft.graph.security.subcategoryTemplate');
$requestBody->setDisplayName('Vendor Invoice');

$result = $graphServiceClient->security()->labels()->categories()->byCategoryTemplateId('categoryTemplate-id')->subcategories()->post($requestBody)->wait();

```