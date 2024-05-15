---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const virtualEventTownhall = {
    displayName:  'The Impact of Tech on Our Lives',
    description:  'Discusses how technology has changed the way we communicate.',
    startDateTime:  {
      dateTime:  '2023-03-30T10:00:00', 
      timeZone:  'Pacific Standard Time' 
    },
    endDateTime:  {
      dateTime:  '2023-03-30T17:00:00', 
      timeZone:  'Pacific Standard Time' 
    },
    audience:  'organization',
    coOrganizers:  [
      { 
        id:  '7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b', 
        tenantId:  '77229959-e479-4a73-b6e0-ddac27be315c' 
      }
    ]
};

await client.api('/solutions/virtualEvents/townhalls')
	.version('beta')
	.post(virtualEventTownhall);

```