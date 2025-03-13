---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationSubmissionResource = {
	resource: {
		displayName: 'Wikipedia',
		link: 'https://en.wikipedia.org/wiki/Main_Page',
		'@odata.type': '#microsoft.graph.educationLinkResource'
	}
};

await client.api('/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/1618dfb0-3ff2-4edf-8d5c-b8f81df00e80/submissions/da443246-384d-673b-32db-bdba9d7f2b51/resources')
	.version('beta')
	.post(educationSubmissionResource);

```