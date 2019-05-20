
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const changeScreenSharingRole = {
  role: "viewer"
};

let res = await client.api('/app/calls/{id}/changeScreenSharingRole')
	.version('beta')
	.post(changeScreenSharingRole);

```