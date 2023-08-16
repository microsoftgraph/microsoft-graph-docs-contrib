<!-- markdownlint-disable MD041 -->

```php
$response = $graphServiceClient->users->byUserId('USER_ID')->messages()->get(new MessagesRequestBuilderGetRequestConfiguration(
        queryParameters: new MessagesRequestBuilderGetQueryParameters(
            expand: ['attachments',]
        )
    ));
$messages = $response->wait();
```
