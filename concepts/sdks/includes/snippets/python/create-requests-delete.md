<!-- markdownlint-disable MD041 -->

```python
# DELETE https://graph.microsoft.com/v1.0/me/messages/{message-id}

asyncio.run(client.me.messages_by_id('msgId').delete())
```
