---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SchemaExtension();
$requestBody->setId('courses');

$requestBody->setDescription('Graph Learn training courses extensions');

$requestBody->setTargetTypes(['Group', ]);

$propertiesExtensionSchemaProperty1 = new ExtensionSchemaProperty();
$additionalData = [
'name' => 'courseId', 
'type' => 'Integer', 
];
$propertiesExtensionSchemaProperty1->setAdditionalData($additionalData);



$propertiesArray []= $propertiesExtensionSchemaProperty1;
$propertiesExtensionSchemaProperty2 = new ExtensionSchemaProperty();
$additionalData = [
'name' => 'courseName', 
'type' => 'String', 
];
$propertiesExtensionSchemaProperty2->setAdditionalData($additionalData);



$propertiesArray []= $propertiesExtensionSchemaProperty2;
$propertiesExtensionSchemaProperty3 = new ExtensionSchemaProperty();
$additionalData = [
'name' => 'courseType', 
'type' => 'String', 
];
$propertiesExtensionSchemaProperty3->setAdditionalData($additionalData);



$propertiesArray []= $propertiesExtensionSchemaProperty3;
$requestBody->setProperties($propertiesArray);




$requestResult = $graphServiceClient->schemaExtensions()->post($requestBody);


```