---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const urlThreatSubmission = {
  '@odata.type': '#microsoft.graph.urlThreatSubmission',
  category: 'phishing',
  webUrl: 'http://phishing.contoso.com'
};

await client.api('/security/threatSubmission/urlThreats')
	.version('beta')
	.post(urlThreatSubmission);

```