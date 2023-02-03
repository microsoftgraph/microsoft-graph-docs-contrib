<!-- markdownlint-disable MD041 -->

```python
# GET https://graph.microsoft.com/v1.0/me/messages/{message-id}?$expand=attachments

query_params = MessagesRequestBuilder.MessagesRequestBuilderGetQueryParameters(
    expand=['attachments',]
)

request_config = MessagesRequestBuilder.MessagesRequestBuilderGetRequestConfiguration(
    query_parameters=query_params,
)

messages = asyncio.run(client.me
                       .messages_by_id('msgId')
                       .get(request_configuration=request_config))
```
