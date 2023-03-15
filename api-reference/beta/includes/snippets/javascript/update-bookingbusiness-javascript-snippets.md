---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const bookingBusiness = {
  email: 'admin@fabrikam.com',
  schedulingPolicy: {
      timeSlotInterval: 'PT60M',
      minimumLeadTime: 'P1D',
      maximumAdvance: 'P30D',
      sendConfirmationsToOwner: true,
      allowStaffSelection: true
  }
};

await client.api('/bookingBusinesses/fabrikam@contoso.onmicrosoft.com')
	.version('beta')
	.update(bookingBusiness);

```