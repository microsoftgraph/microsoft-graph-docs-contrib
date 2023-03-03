---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const alertRule = {
  severity: 'informational',
  enabled: true,
  threshold: {
      aggregation: 'count',
      operator: 'greaterOrEqual',
      target: 90
  },
  notificationChannels: [
      {
        notificationChannelType: 'portal',
        receivers: [
            ''
        ],
        notificationReceivers: []
      },
      {
        notificationChannelType: 'email',
        receivers: [
            'serena.davis@contoso.com'
        ],
        notificationReceivers: [
            {
                locale: 'en-us',
                contactInformation: 'serena.davis@contoso.com'
            }
        ]
      }
  ]
};

await client.api('/deviceManagement/monitoring/alertRules/215c55cc-b1c9-4d36-a870-be5778101714')
	.version('beta')
	.update(alertRule);

```