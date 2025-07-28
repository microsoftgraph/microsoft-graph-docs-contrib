---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const policyRule = {
  '@odata.type': '#microsoft.graph.networkaccess.tlsInspectionRule',
  name: 'Contoso TLS Rule 1',
  priority: 100,
  description: 'My TLS rule',
  action: 'inspect',
  settings: {
    status: 'enabled'
  },
  matchingConditions: {
    destinations: [
      {
        '@odata.type': '#microsoft.graph.networkaccess.tlsInspectionFqdnDestination',
        values: [
          'www.contoso.test.com',
          '*.contoso.org'
        ]
      },
      {
        '@odata.type': '#microsoft.graph.networkaccess.tlsInspectionWebCategoriesDestination',
        values: [
          'Entertainment'
        ]
      }
    ]
  }
};

await client.api('/networkAccess/tlsInspectionPolicies/b712c469-e7cd-e7cb-738f-94b199570b0d/policyRules')
	.version('beta')
	.post(policyRule);

```