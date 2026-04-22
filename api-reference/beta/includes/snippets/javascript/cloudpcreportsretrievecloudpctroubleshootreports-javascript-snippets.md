---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const stream = {
  reportName: 'troubleshootTenantActiveConnectionCountTrendReport',
  select: [
    'EventDateTime',
    'TotalActiveConnectionCountAvg',
    'GroupColumn'
  ],
  filter: "(TimeRange eq 'Last 7 days') and (PolicyNameParam eq '') and (RegionParam eq '') and (UserSettingNameParam eq '') and (ServicePlanTypeParam eq 'Enterprise') and (ServicePlanNameParam eq '') and (OSBuildVersionParam eq '') and (AADJoinTypeParam eq '') and (ImageNameParam eq '') and (GatewayRegionParam eq '') and (ClientOSParam eq '') and (ClientTypeParam eq '') and (TransportTypeParam eq '') and (CloudPCEndpointCountryRegionParam eq '') and (CloudPCEndpointStateParam eq '') and (CloudPCEndpointCityParam eq '')",
  top: 1000,
  skip: 0,
  groupby: [
    'GatewayRegion'
  ]
};

await client.api('/deviceManagement/virtualEndpoint/reports/retrieveCloudPcTroubleshootReports')
	.version('beta')
	.post(stream);

```
