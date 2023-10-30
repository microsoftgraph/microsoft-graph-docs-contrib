<!-- markdownlint-disable MD041 -->

```php
try {
    $user = $graphServiceClient->me()->get()->wait();
  
    echo "Hello, I am {$user->getGivenName()}";

} catch (ApiException $ex) {
    echo $ex->getMessage();
}
```