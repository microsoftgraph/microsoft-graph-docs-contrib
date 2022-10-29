---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let emailThreatSubmissionPolicy = await client.api('/security/threatSubmission/emailThreatSubmissionPolicies/{emailThreatSubmissionPoliciesId}')
	.version('beta')
	.get();

```