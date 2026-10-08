---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const crossOrganizationGroupMappings = {
  '@context': '#$delta',
  value: [
    {
      sourceOrganizationId: '11111111-1111-1111-1111-111111111111',
      groupType: 'm365Group',
      sourceGroupIdentity: {
        id: 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa'
      },
      targetGroupIdentity: {
        id: 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb'
      },
      targetGroupMigrationData: {
        mailNickname: 'targetGroup'
      }
    },
    {
      '@removed': {
        reason: 'deleted'
      },
      sourceGroupIdentity: {
        id: 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa'
      }
    }
  ]
};

await client.api('/solutions/sharePoint/migrations/crossOrganizationGroupMappings')
	.version('beta')
	.update(crossOrganizationGroupMappings);

```