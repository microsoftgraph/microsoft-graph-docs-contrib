---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const alert = {
  createAlertInput: {
    title: 'Suspicious PowerShell activity',
    severity: 'medium',
    description: 'PowerShell script execution was identified during analyst triage.',
    category: 'Execution',
    recommendedActions: 'Review the script contents and isolate the affected device.',
    mitreTechniques: ['T1059.001'],
    linkToIncident: 42,
    isExcludedFromCorrelation: false,
    entityDefinitions: [
      {
        entityType: 'device',
        entityIdentifier: 'deviceId',
        identifierValue: 'd1234567-abcd-4f01-8abc-890123456789',
        role: 'impacted'
      }
    ]
  }
};

await client.api('/security/alerts_v2/createAlert')
	.version('beta')
	.post(alert);

```