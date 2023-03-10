<!-- markdownlint-disable MD041 -->

```php
$response = $graphServiceClient->usersById('USER_ID')->messages('MESSAGE_ID')->delete()->wait();
```