---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const mutualTlsOauthConfiguration = {
  displayName: 'THIS_IS_A_NEW_NAME'
};

await client.api('/directory/certificateAuthorities/mutualTlsOauthConfigurations/eec5ba11-2fc0-4113-83a2-ed986ed13cdb')
	.version('beta')
	.update(mutualTlsOauthConfiguration);

```