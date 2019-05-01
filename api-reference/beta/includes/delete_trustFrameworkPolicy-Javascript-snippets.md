
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/trustFramework/policies/B2C_1A_SocialAndLocalAccounts_Base')
	.version('beta')
	.delete();

```