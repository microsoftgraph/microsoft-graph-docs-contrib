---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const emailThreatSubmissionPolicy = {
  isReportToMicrosoftEnabled: true
};

await client.api('/security/threatSubmission/emailthreatSubmissionPolicies')
	.version('beta')
	.post(emailThreatSubmissionPolicy);

```