---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let permissionsAnalyticsAggregatedIdentitySummary = await client.api('/identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.inactiveGcpServiceAccountFinding/aggregatedSummary(authorizationSystemIds=['ck-qa-neova-solutions'])')
	.version('beta')
	.get();

```