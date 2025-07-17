---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getrecentlymodifiedsubmissions = await client.api('/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/getrecentlymodifiedsubmissions')
	.version('beta')
	.filter('assignmentId eq \'b20d6737-f88e-4892-8174-73aa26d18784\'')
	.select('lastModifiedDateTime,status')
	.get();

```