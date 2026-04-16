---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const ownerlessGroupPolicy = {
  isEnabled: true,
  notificationDurationInWeeks: 3,
  maxMembersToNotify: 40,
  policyWebUrl: 'https://contoso.com/policies/ownerless-groups',
  targetOwners: {
    notifyMembers: 'allowSelected',
    securityGroups: [
      'security-group1@contoso.com',
      'security-group2@contoso.com'
    ]
  },
  enabledGroupIds: [
    'b14e5eb2-a0a1-4c8f-b83e-940526219200',
    '454dde77-ac2b-421b-a6ab-165be910e0fc'
  ],
  emailInfo: {
    senderEmailAddress: 'admin@contoso.com',
    subject: 'Need your help with $Group.Name group',
    body: 'Hi $User.DisplayName, \n\nYou\'\\'\'re receiving this email because you\'\\'\'ve been an active member of the $Group.Name group. This group currently does not have an owner. \n\nPer your organization\'\\'\'s policy, the group requires an owner.\n\nThank you'
  }
};

await client.api('/policies/ownerlessGroupPolicy')
	.version('beta')
	.update(ownerlessGroupPolicy);

```