<!-- markdownlint-disable MD041 -->

```py
messages = asyncio.run(client.users_by_id('userId')
                       .messages()
                       .delete())
```