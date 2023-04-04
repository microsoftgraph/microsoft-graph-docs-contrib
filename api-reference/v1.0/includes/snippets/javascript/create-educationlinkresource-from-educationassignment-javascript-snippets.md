---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationAssignmentResource = {
	distributeForStudentWork: false,
	resource: {
		displayName: 'Where the Wonders of Learning Never Cease | Wonderopolis',
		link: 'https://wonderopolis.org/',
		thumbnailPreviewUrl: null,
		'@odata.type': '#microsoft.graph.educationLinkResource'
	}
};

await client.api('/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/1618dfb0-3ff2-4edf-8d5c-b8f81df00e80/resources')
	.post(educationAssignmentResource);

```