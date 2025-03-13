---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const enrichedAuditLogs = {
  '@odata.type': '#microsoft.graph.networkaccess.enrichedAuditLogs',
  sharepoint: {
    '@odata.type': 'microsoft.graph.networkaccess.enrichedAuditLogsSettings'
  },
  teams: {
    '@odata.type': 'microsoft.graph.networkaccess.enrichedAuditLogsSettings'
  },
  exchange: {
    '@odata.type': 'microsoft.graph.networkaccess.enrichedAuditLogsSettings'
  }
};

await client.api('/networkAccess/settings/enrichedAuditLogs')
	.version('beta')
	.update(enrichedAuditLogs);

```