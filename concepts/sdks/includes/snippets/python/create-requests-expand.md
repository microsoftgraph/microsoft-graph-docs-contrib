<!-- markdownlint-disable MD041 -->

```py
query_params = MessagesRequestBuilder.MessagesRequestBuilderGetQueryParameters(
    expand=['attachments',]
)

request_config = MessagesRequestBuilder.MessagesRequestBuilderGetRequestConfiguration(
    query_parameters=query_params,
)

messages = asyncio.run(client.users_by_id('userId')
                       .messages()
                       .get(request_configuration=request_config))
```
