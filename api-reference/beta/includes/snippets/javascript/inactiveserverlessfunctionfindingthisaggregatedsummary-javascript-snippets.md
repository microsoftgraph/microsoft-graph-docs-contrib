---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let permissionsAnalyticsAggregatedIdentitySummary = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.inactiveServerlessFunctionFinding/microsoft.graph.aggregatedSummary(authorizationSystemIds=['377596131774'])')
	.version('beta')
	.get();

```