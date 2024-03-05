---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const auditLogQuery = {
  '@odata.type': '#microsoft.graph.security.auditLogQuery',
  displayName: 'String',
  filterStartDateTime: 'String (timestamp)',
  filterEndDateTime: 'String (timestamp)',
  recordTypeFilter: 'String',
  keywordFilter: 'String',
  serviceFilter: 'String',
  operationFilters: [
    'String'
  ],
  userPrincipalNameFilters: [
    'String'
  ],
  ipAddressFilters: [
    'String'
  ],
  objectIdFilters: [
    'String'
  ],
  administrativeUnitIdFilters: [
    'String'
  ],
  status: 'String'
};

await client.api('/security/auditLog/queries')
	.version('beta')
	.post(auditLogQuery);

```