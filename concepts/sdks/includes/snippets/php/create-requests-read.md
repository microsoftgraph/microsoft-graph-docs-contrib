<!-- markdownlint-disable MD041 -->

```php
try {
    $response = $graphServiceClient->usersById('USER_ID or USER_PRINCIPAL_NAME')->get();
    $user = $response->wait();
    echo "Hello, I am {$user->getGivenName()}";

} catch (ApiException $ex) {
    echo $ex->getMessage();
}
```