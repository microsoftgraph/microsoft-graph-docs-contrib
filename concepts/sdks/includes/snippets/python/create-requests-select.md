<!-- markdownlint-disable MD041 -->

```py
query_params = MessagesRequestBuilder.MessagesRequestBuilderGetQueryParameters(
    select=['subject',], skip=1, top=5
)

request_config = MessagesRequestBuilder.MessagesRequestBuilderGetRequestConfiguration(
    query_parameters=query_params,
)

messages = asyncio.run(client.users_by_id('userId')
                       .messages()
                       .get(request_configuration=request_config))
for msg in messages.value:
    print(msg.subject, msg.id, msg.from_escaped)
```