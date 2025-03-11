---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const $batch = {
  requests: [
    {
      id: '1',
      method: 'GET',
      url: '/me/memberOf'
    },
    {
      id: '2',
      method: 'GET',
      url: '/me/planner/tasks'
    },
    {
      id: '3',
      method: 'DELETE',
      url: '/groups/0e226165-c685-41ce-8bfc-df8360ab325d'
    },
    {
      id: '4',
      url: '/users/161ab652-cdbc-490d-82a4-0ada1f0db247/getPasswordSingleSignOnCredentials',
      method: 'POST',
      body: {},
      headers: {'Content-Type': 'application/json'}
    },
    {
      id: '5',
      url: 'users?$select=id,displayName,userPrincipalName&$filter=city eq null&$count=true',
      method: 'GET',
      headers: {
        ConsistencyLevel: 'eventual'
      }
    }
  ]
};

await client.api('/$batch')
	.post($batch);

```