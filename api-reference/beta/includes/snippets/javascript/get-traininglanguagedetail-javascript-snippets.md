---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let trainingLanguageDetail = await client.api('/security/attackSimulation/trainings/3f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc/languageDetails/2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc')
	.version('beta')
	.filter('locale eq \'en\'')
	.get();

```