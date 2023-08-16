<!-- markdownlint-disable MD041 -->

```php
$messages = $graphServiceClient->users->byUserId('USER_ID')->messages()->get()->wait();

foreach ($messages->getValue() as $message) {
    echo "Subject: {$message->getSubject()}\n";
}
```
