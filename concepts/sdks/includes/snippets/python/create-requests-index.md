<!-- markdownlint-disable MD041 -->

```python
# GET https://graph.microsoft.com/v1.0/me/messages/{message-id}

message = asyncio.run(client.me
                      .messages('messageId')
                      .get())
```
