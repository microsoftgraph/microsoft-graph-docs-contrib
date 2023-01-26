<!-- markdownlint-disable MD041 -->

```python
# GET https://graph.microsoft.com/v1.0/me/messages?$select=sender,subject&$filter=<some condition>&orderBy=receivedDateTime

query_params = MessagesRequestBuilder.MessagesRequestBuilderGetQueryParameters(
    select=['sender', 'subject'],
    filter='<filter condition>',
    orderby=['receivedDateTime']
)
request_config = MessagesRequestBuilder.MessagesRequestBuilderGetRequestConfiguration(
    query_parameters= query_params
)
messages = asyncio.run(client.me
                       .messages
                       .get(request_configuration=request_config))
```
