---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->sites()->bySiteId('site-id')->lists()->byListId('list-id')->items()->byListItemId('listItem-id')->documentSetVersions()->byDocumentSetVersionId('documentSetVersion-id')->delete()->wait();

```