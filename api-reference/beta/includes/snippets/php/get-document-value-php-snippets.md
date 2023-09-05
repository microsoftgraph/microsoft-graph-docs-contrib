---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->print()->printers()->byPrinterId('printer-id')->jobs()->byPrintJobId('printJob-id')->documents()->byPrintDocumentId('printDocument-id')->value()->get()->wait();

```