---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const referenceDefinition = {
    '@odata.type': '#microsoft.graph.industryData.referenceDefinition',
    displayName: 'Updated Test Grade Name'
};

await client.api('/external/industryData/referenceDefinitions/RefGradeLevel-TestGrade')
	.version('beta')
	.update(referenceDefinition);

```