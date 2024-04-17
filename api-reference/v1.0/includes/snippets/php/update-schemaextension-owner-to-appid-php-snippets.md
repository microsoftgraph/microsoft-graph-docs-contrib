---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\SchemaExtension;
use Microsoft\Graph\Generated\Models\ExtensionSchemaProperty;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SchemaExtension();
$requestBody->setOwner('ef4cb9a8-97c3-4ca7-854b-5cb5ced376fa');
$propertiesExtensionSchemaProperty1 = new ExtensionSchemaProperty();
$propertiesExtensionSchemaProperty1->setName('courseId');
$propertiesExtensionSchemaProperty1->setType('Integer');
$propertiesArray []= $propertiesExtensionSchemaProperty1;
$propertiesExtensionSchemaProperty2 = new ExtensionSchemaProperty();
$propertiesExtensionSchemaProperty2->setName('courseName');
$propertiesExtensionSchemaProperty2->setType('String');
$propertiesArray []= $propertiesExtensionSchemaProperty2;
$propertiesExtensionSchemaProperty3 = new ExtensionSchemaProperty();
$propertiesExtensionSchemaProperty3->setName('courseType');
$propertiesExtensionSchemaProperty3->setType('String');
$propertiesArray []= $propertiesExtensionSchemaProperty3;
$propertiesExtensionSchemaProperty4 = new ExtensionSchemaProperty();
$propertiesExtensionSchemaProperty4->setName('courseSupervisors');
$propertiesExtensionSchemaProperty4->setType('String');
$propertiesArray []= $propertiesExtensionSchemaProperty4;
$requestBody->setProperties($propertiesArray);


$result = $graphServiceClient->schemaExtensions()->bySchemaExtensionId('schemaExtension-id')->patch($requestBody)->wait();

```