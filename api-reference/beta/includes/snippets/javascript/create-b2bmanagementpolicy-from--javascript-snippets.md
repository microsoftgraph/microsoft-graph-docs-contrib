---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const b2bManagementPolicy = {
  '@odata.type': '#microsoft.graph.b2bManagementPolicy',
  deletedDateTime: null,
  description: 'Policy used for B2B features',
  displayName: 'Policy1',
  definition: [
    "{
      \'B2BManagementPolicy\':{
        \'version\':1,
        \'invitationsAllowedAndBlocked\':{
                        \'AllowedDomains\': [\'microsoft.com\', \'live.com\'],
                        \'BlockedDomains\': [\'bing.com\']
                    }
        }
    }"
  ],
  isOrganizationDefault: true
};

await client.api('/policies/b2bManagementPolicies')
	.version('beta')
	.post(b2bManagementPolicy);

```