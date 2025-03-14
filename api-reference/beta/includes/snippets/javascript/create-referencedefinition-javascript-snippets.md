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
  referenceType: 'RefGradeLevel',
  code: 'TestGrade',
  isDisabled: false,
  sortIndex: 300,
  displayName: 'New Test Grade Level'
};

await client.api('/external/industryData/referenceDefinitions')
	.version('beta')
	.post(referenceDefinition);

```