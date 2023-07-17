---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new MailSearchFolder();
$requestBody->set@odatatype('microsoft.graph.mailSearchFolder');

$requestBody->setDisplayName('Weekly digests');

$requestBody->setIncludeNestedFolders(true);

$requestBody->setSourceFolderIds(['AQMkADYAAAIBDAAAAA==', ]);

$requestBody->setFilterQuery('contains(subject, \'weekly digest\')');



$result = $graphServiceClient->me()->mailFolders()->byMailFolderId('mailFolder-id')->childFolders()->post($requestBody);


```