---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const scheduledPermissionsRequest = {
  requestedPermissions: {
    '@odata.type': '#microsoft.graph.awsPermissionsDefinition',
    authorizationSystemInfo: {
      authorizationSystemId: '956987887735',
      authorizationSystemType: 'AWS'
    },
    actionInfo: {
      '@odata.type': 'microsoft.graph.awsPolicyPermissionsDefinitionAction',
      policies: [
        {
          id: 'arn:aws:iam::956987887735:policy/AddUserToGroup'
        }
      ],
      assignToRoleId: 'arn:aws:aim::956987887735:role/saml-user'
    },
    identityInfo: {
      externalId: 'alex@contoso.com',
      source: {
        '@odata.type': 'microsoft.graph.samlIdentitySource'
      },
      identityType: 'user'
    }
  },
  justification: 'I need to do this because I want to add a user to a group',
  notes: 'Pretty Please',
  scheduleInfo: {
    expiration: {
      duration: 'PT1H'
    }
  },
  ticketInfo: {
    ticketNumber: 'INC1234567',
    ticketSystem: 'ServiceNow',
    ticketSubmitterIdentityId: 'alex@contoso.com',
    ticketApproverIdentityId: 'alexmanager@contoso.com'
  }
};

await client.api('/identityGovernance/permissionsManagement/scheduledPermissionsRequests')
	.version('beta')
	.post(scheduledPermissionsRequest);

```