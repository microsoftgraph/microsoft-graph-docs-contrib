---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const agentInstance = {
  agentCardManifest: {
    ownerIds: [
      '0ef68a76-e247-41dd-947b-41282760a2ac'
    ],
    originatingStore: 'Copilot Studio',
    displayName: 'Conditional Access Agent Card',
    description: 'Manages organizational conditional access policies',
    iconUrl: 'https://example.com/icon.png',
    provider: {
      organization: 'Test Organization',
      url: 'https://test.com'
    },
    protocolVersion: '1.0',
    version: '1.0.0',
    documentationUrl: 'https://example.com/docs',
    capabilities: {
      streaming: false,
      pushNotifications: false,
      stateTransitionHistory: true,
      extensions: [
        {
          uri: 'https://contoso.example.com/a2a/capabilities/secureMessaging',
          description: null,
          required: false,
          params: {
            useHttps: true
          }
        }
      ]
    },
    defaultInputModes: [
      'application/json'
    ],
    defaultOutputModes: [
      'application/json',
      'text/html'
    ],
    supportsAuthenticatedExtendedCard: true,
    skills: [
      {
        id: 'threat-detection',
        displayName: 'Threat Detection',
        description: 'Detect security threats in real-time',
        tags: [
          'security',
          'threat',
          'detection'
        ],
        examples: [
          'Analyze this log for threats',
          'Check for malware'
        ],
        inputModes: [
          'application/json',
          'text/plain'
        ],
        outputModes: [
          'application/json',
          'text/html'
        ]
      }
    ]
  }
};

await client.api('/agentRegistry/agentInstances/{agentInstanceId}')
	.version('beta')
	.update(agentInstance);

```