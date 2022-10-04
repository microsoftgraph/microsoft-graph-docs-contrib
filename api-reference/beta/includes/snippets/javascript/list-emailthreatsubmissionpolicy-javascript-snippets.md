---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let emailThreatSubmissionPolicies = await client.api('/security/threatSubmission/emailThreatSubmissionPolicies')
	.version('beta')
	.get();

```