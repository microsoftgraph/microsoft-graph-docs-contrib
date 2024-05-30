---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const certificateBasedApplicationConfiguration = {
  '@odata.type': '#microsoft.graph.certificateBasedApplicationConfiguration',
  displayName: 'New display name',
  description: 'New description text'
};

await client.api('/directory/certificateAuthorities/certificateBasedApplicationConfigurations/d5b0af1c-9376-6b66-16b6-e402965862c1')
	.version('beta')
	.update(certificateBasedApplicationConfiguration);

```