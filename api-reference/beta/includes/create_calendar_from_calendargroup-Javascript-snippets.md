
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const calendar = {
  name: "name-value",
  color: {
  }
};

let res = await client.api('/me/calendarGroups/{id}/calendars')
	.version('beta')
	.post({calendar : calendar});

```