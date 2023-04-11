---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const emailThreatSubmissionPolicy = {
  isReportToMicrosoftEnabled: false
};

await client.api('/security/threatSubmission/emailthreatSubmissionPolicies/DefaultReportSubmissionPolicy')
	.version('beta')
	.update(emailThreatSubmissionPolicy);

```