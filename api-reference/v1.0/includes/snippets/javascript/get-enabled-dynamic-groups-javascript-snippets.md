---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let groups = await client.api('/groups')
	.header('ConsistencyLevel','eventual')
	.filter('mailEnabled eq false and securityEnabled eq true and NOT(groupTypes/any(s:s eq \'Unified\')) and membershipRuleProcessingState eq \'On\'')
	.select('id,membershipRule,membershipRuleProcessingState')
	.get();

```