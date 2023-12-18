---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->custodians()->byCustodianId('custodian-id')->siteSources()->bySiteSourceId('siteSource-id')->delete()->wait();

```