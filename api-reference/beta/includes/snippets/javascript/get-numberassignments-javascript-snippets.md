---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let numberAssignment = await client.api('/admin/teams/telephoneNumberManagement/numberAssignments/YmMyNjMyZTMtNzUwYy00N2Q3LWFlYWUtOWZlZTAzNWJjMGM3fCsxMjAyMzQ1Njc4OQ')
	.version('beta')
	.get();

```