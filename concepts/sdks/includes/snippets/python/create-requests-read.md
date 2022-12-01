<!-- markdownlint-disable MD041 -->

```py
message = asyncio.run(client.users_by_id('userId').messages_by_id('msgId').get())
print(message.subject, message.importance)
```