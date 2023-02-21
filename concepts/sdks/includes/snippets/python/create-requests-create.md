<!-- markdownlint-disable MD041 -->

```python
# POST https://graph.microsoft.com/v1.0/me/calendars

calendar = Calendar()
calendar.name = "Volunteer"

new_calendar = asyncio.run(client.me.calendars.post(calendar))
```
