---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const stream = {
  reportName: 'cloudPcInsightReport',
  filter: '',
  select: [
    'ManagedDeviceName',
    'DeviceId',
    'ClientOS',
    'ClientVersion',
    'MultimediaRedirectVersion',
    'TeamsClientVersion',
    'HostOSVersion',
    'HostSxSStackVersion',
    'HostAgentVersion',
    'PolicyName',
    'UserSettingName',
    'HostRegion',
    'AzureNetworkConnectName'
  ],
  search: '',
  skip: 0,
  top: 50
};

await client.api('/deviceManagement/virtualEndpoint/reports/retrieveCloudPcTenantMetricsReport')
	.version('beta')
	.post(stream);

```