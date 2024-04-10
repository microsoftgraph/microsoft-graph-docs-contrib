---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const changeAlertRecordsPortalNotificationAsSent = {
  alertRecordIds: [
    '1d2b92e3-539a-481f-b38a-c2c050b422ad',
    '4bf624c4-a801-4631-989c-7f1a3a0d1d83',
  ]

};

await client.api('/deviceManagement/monitoring/alertRecords/changeAlertRecordsPortalNotificationAsSent')
	.version('beta')
	.post(changeAlertRecordsPortalNotificationAsSent);

```