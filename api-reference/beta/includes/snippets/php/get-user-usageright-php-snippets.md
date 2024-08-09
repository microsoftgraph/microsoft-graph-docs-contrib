```php
<?php
use Microsoft\Graph\Beta\GraphServiceClient;

$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$result = $graphServiceClient->users()->byUserId('user-id')->cloudLicensing()->usageRights()->byUsageRightId('usageRight-id')->get()->wait();
```