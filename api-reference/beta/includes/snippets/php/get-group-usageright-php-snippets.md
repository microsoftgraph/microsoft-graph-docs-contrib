```php
<?php
use Microsoft\Graph\Beta\GraphServiceClient;

$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$result = $graphServiceClient->groups()->byGroupId('group-id')->cloudLicensing()->usageRights()->byUsageRightId('usageRight-id')->get()->wait();
```