---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationGradingScheme = {
  displayName: 'PassFailScheme',
  grades: [
    {
      displayName: 'Pass',
      minPercentage: 70,
      defaultPercentage: 90
    },
    {
      displayName: 'Fail',
      minPercentage: 0,
      defaultPercentage: 50
    }
  ]
};

await client.api('/education/classes/de45722a-c202-43a9-9dd5-d82c45bcef91/assignmentSettings/gradingSchemes')
	.version('beta')
	.post(educationGradingScheme);

```