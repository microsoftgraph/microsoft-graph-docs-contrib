<!-- markdownlint-disable MD041 -->

```php
try {
    $response = $graphServiceClient->usersById('AlexW@M365x86781558.OnMicrosoft.com')->get();
    $user = $response->wait();
    echo "Hello, I am {$user->getGivenName()}";

} catch (ApiException $ex) {
    echo $ex->getMessage();
}
```