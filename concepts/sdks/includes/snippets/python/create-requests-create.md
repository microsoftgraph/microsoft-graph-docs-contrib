<!-- markdownlint-disable MD041 -->

```py
new_message = Message()
new_message.subject = "Meet for Lunch?"
new_message.importance = Importance.High

body = ItemBody()
body.content_type = BodyType.Text
body.content = "The new cafeteria is open."
new_message.body = body

recepients = Recipient()

email_address = EmailAddress()
email_address.address = "user@example.com"

recepients.email_address = email_address
new_message.to_recipients = [recepients]

msg = asyncio.run(client.users_by_id('userId').messages().post(new_message))
print(msg.subject, msg.body.content, msg.importance, )
```