
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/me/findRooms(RoomList='Building2Rooms@contoso.onmicrosoft.com')')
	.version('beta')
	.get();

```