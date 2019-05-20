
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/riskyUsers')
	.version('beta')
	.filter('riskLevel eq microsoft.graph.riskLevel'medium'')
	.get();

```