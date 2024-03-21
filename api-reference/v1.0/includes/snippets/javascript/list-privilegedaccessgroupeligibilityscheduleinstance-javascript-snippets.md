---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let eligibilityScheduleInstances = await client.api('/identityGovernance/privilegedAccess/group/eligibilityScheduleInstances')
	.filter('groupId eq \'2b5ed229-4072-478d-9504-a047ebd4b07d\'')
	.get();

```