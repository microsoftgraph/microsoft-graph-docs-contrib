---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let permissionsAnalyticsAggregatedIdentitySummary = await client.api('/identityGovernance/permissionsAnalytics/azure/findings/microsoft.graph.superUserFinding/aggregatedSummary(authorizationSystemIds=['00f7dcae-97f9-492b-af2e-36eb35b613af'])')
	.version('beta')
	.get();

```