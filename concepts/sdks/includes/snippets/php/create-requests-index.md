<!-- markdownlint-disable MD041 -->

```php
$response = $graphServiceClient->users->byUserId('USER_ID')->messages('MESSAGE_ID')->get();
$message = $response->wait();
```
