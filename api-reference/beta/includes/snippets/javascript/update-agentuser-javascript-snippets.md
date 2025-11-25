---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const response = {
  '@odata.type': '#microsoft.graph.agentUser',
  accountEnabled: true,
  assignedLicenses: [
    {
      '@odata.type': 'microsoft.graph.assignedLicense'
    }
  ],
  businessPhones: [
    '+1 425 555 0109'
  ],
  city: 'Seattle',
  companyName: 'Contoso',
  country: 'United States',
  department: 'Sales',
  displayName: 'Sales Agent',
  employeeId: '12345',
  employeeType: 'Agent',
  givenName: 'Sales',
  employeeHireDate: '2024-01-15T00:00:00Z',
  employeeLeaveDateTime: null,
  employeeOrgData: {
    '@odata.type': 'microsoft.graph.employeeOrgData',
    division: 'Sales Division',
    costCenter: '1234'
  },
  jobTitle: 'Sales Agent',
  mail: 'salesagent@contoso.com',
  mailNickname: 'SalesAgent',
  mobilePhone: '+1 425 555 0110',
  officeLocation: '18/2111',
  otherMails: [
    'salesagent@contoso.com'
  ],
  postalCode: '98052',
  preferredLanguage: 'en-US',
  state: 'WA',
  streetAddress: '9256 Towne Center Dr., Suite 400',
  surname: 'Agent',
  usageLocation: 'US',
  userPrincipalName: 'salesagent@contoso.com',
  userType: 'Member'
};

await client.api('/users/microsoft.graph.agentUser/{userId}')
	.version('beta')
	.update(response);

```