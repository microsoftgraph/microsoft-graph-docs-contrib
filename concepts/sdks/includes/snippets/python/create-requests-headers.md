<!-- markdownlint-disable MD041 -->

```python
# GET https://graph.microsoft.com/v1.0/users/{user-id}/events

request_config = MessagesRequestBuilder.MessagesRequestBuilderGetRequestConfiguration(
    headers={'Prefer': 'outlook.timezone="Pacific Standard Time"'},
)

events = asyncio.run(client.me
                     .events
                     .get(request_configuration=request_config))
```
