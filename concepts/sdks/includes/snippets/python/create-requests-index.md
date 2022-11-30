<!-- markdownlint-disable MD041 -->

```py
message = asyncio.run(client.users_by_id('userId')
                       .messages('messageId')
                       .get())
print(message.subject)
```