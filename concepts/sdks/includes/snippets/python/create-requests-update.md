<!-- markdownlint-disable MD041 -->

```py
updated = Message()

updated.subject = "Meet for Lunch at 1?"

msg = asyncio.run(client.users_by_id('userId').messages_by_id('msgId').patch(updated))
```