
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const CommsOperation = {
  all: true,
  clientContext: "clientContext-value"
};

let res = await client.api('/app/calls/{id}/cancelMediaProcessing')
	.version('beta')
	.post(CommsOperation);

```