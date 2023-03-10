<!-- markdownlint-disable MD041 -->

```php
$response = $graphServiceClient->usersById('USER_ID')->messages()->get(new MessagesRequestBuilderGetRequestConfiguration(
        queryParameters: new MessagesRequestBuilderGetQueryParameters(
            expand: ['attachments',]
        )
    ));
$messages = $response->wait();
```