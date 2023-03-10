<!-- markdownlint-disable MD041 -->

```php
use Microsoft\Graph\Generated\Users\Item\Messages\MessagesRequestBuilderGetQueryParameters;
use Microsoft\Graph\Generated\Users\Item\Messages\MessagesRequestBuilderGetRequestConfiguration;

$requestConfig = new MessagesRequestBuilderGetRequestConfiguration();
$requestConfig->queryParameters = new MessagesRequestBuilderGetQueryParameters();
$requestConfig->queryParameters->select = ['subject'];
$requestConfig->queryParameters->top = 2;
$requestConfig->headers = ['Prefer' => 'outlook.body-content-type=text'];

$messages = $graphServiceClient->usersById(USER_ID)->messages()->get($requestConfig)->wait();

foreach ($messages->getValue() as $message) {
    echo "Subject: {$message->getSubject()}\n";
}
```