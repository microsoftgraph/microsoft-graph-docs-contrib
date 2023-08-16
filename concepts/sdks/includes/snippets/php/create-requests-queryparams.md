<!-- markdownlint-disable MD041 -->

```php
use Microsoft\Graph\Generated\Users\Item\Messages\MessagesRequestBuilderGetQueryParameters;
use Microsoft\Graph\Generated\Users\Item\Messages\MessagesRequestBuilderGetRequestConfiguration;

$requestConfig = new MessagesRequestBuilderGetRequestConfiguration();
$requestConfig->queryParameters = MessagesRequestBuilderGetRequestConfiguration::createQueryParameters();
$requestConfig->queryParameters->select = ['subject'];
$requestConfig->queryParameters->top = 2;
$requestConfig->headers = ['Prefer' => 'outlook.body-content-type=text'];

// or with PHP 8
$requestConfig = new MessagesRequestBuilderGetRequestConfiguration(
    queryParameters: MessagesRequestBuilderGetRequestConfiguration::createQueryParameters(
        select: ['subject'],
        top: 2
    ),
    headers: ['Prefer' => 'outlook.body-content-type=text']
);

$messages = $graphServiceClient->users()->byUserId(USER_ID)->messages()->get($requestConfig)->wait();

foreach ($messages->getValue() as $message) {
    echo "Subject: {$message->getSubject()}\n";
}
```
