---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const places = {
  '@context': '#$delta',
  value: [
    {
      '@odata.type': 'microsoft.graph.building',
      id: '25e5905a-7fee-4f36-ba31-29e85c14bf18',
      displayName: 'Demo Building A',
      hasWifi: true,
      'children@delta': [
        {
          '@odata.type': 'microsoft.graph.floor',
          displayName: 'Demo Floor 1'
        }
      ]
    },
    {
      '@odata.type': 'microsoft.graph.building',
      displayName: 'Demo Building B',
      'children@delta': [
        {
          '@odata.type': 'microsoft.graph.floor',
          displayName: 'Demo Floor 1',
          'children@delta': [
            {
              '@odata.type': 'microsoft.graph.section',
              displayName: 'Demo Section A',
              'children@delta': [
                {
                  '@odata.type': '#microsoft.graph.desk',
                  id: '211ffb37-e880-475a-b73a-43f484609536'
                },
                {
                  '@odata.type': '#microsoft.graph.room',
                  displayName: 'Demo Room 1'
                }
              ]
            }
          ]
        }
      ]
    },
    {
      '@odata.type': 'microsoft.graph.workspace',
      parentId: '2cb2701d-0896-4c69-91bb-582d82d7c68c',
      displayName: 'Demo Workspace 1',
      mode: {
        '@odata.type': '#microsoft.graph.reservablePlaceMode'
      }
    },
    {
      '@odata.type': '#microsoft.graph.section',
      id: '2cb2701d-0896-4c69-91bb-582d82d7c68c',
      displayName: 'HR'
    }
  ]
};

await client.api('/places')
	.version('beta')
	.update(places);

```