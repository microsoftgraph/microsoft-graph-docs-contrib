---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const agentInstance = {
  id: 'Security Copilot Platform Agent: 00222',
  ownerIds: [
    'daf58b0e-44e1-433c-b6b0-ca70cae320b8',
    'b9108c41-d2d2-4e78-b073-92f57b752bd0'
  ],
  managedBy: '719cc904-9700-4e08-9941-fd826cc84c60',
  originatingStore: 'Microsoft Security Copilot',
  createdBy: 'd47bffae-411a-4de9-8548-05e79bc01f0d',
  displayName: 'Conditional Access Agent',
  sourceAgentId: '00222',
  agentIdentityBlueprintId: 'd0108c41-d2d2-4e78-b073-92f57b752bd0',
  agentIdentityId: 'dd108c41-d2d2-4e78-b073-92f57b752bd0',
  agentUserId: 'ee108c41-d2d2-4e78-b073-92f57b752bd0',
  createdDateTime: '2025-01-01T00:00:00.1234567Z',
  lastModifiedDateTime: '2025-01-01T00:00:00.1234567Z',
  url: 'https://conditional-access-agent.example.com/a2a/v1',
  preferredTransport: 'JSONRPC',
  additionalInterfaces: [
    {
      url: 'https://conditional-access-agent.example.com/a2a/v1',
      transport: 'JSONRPC'
    },
    {
      url: 'https://conditional-access-agent.example.com/a2a/grpc',
      transport: 'GRPC'
    },
    {
      url: 'https://conditional-access-agent.example.com/a2a/json',
      transport: 'HTTP+JSON'
    }
  ],
  signatures: [
    {
      protected: 'eyJhbGciOiJFUzI1NiIsImtpZCI6ImRpZDp3ZWI6Y29udG9zby5leGFtcGxlI2tleS0xIiwidHlwIjoiYWdlbnRjYXJkK2p3cyJ9',
      signature: 'xOSim9oMw_CdZM-qDhmwpB5fJcBx5I30yh-FZULd1j9ruPEUBnJzmfCynNfH1KgmJ2B7ulAYc7D2iIb-4Ul-8w',
      header: {
        kidHint: 'contoso-key-1',
        nonce: 'f1e9b6c3-2f3a-4a3a-b604-1f9af3f2a9c0'
      }
    }
  ],
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
      url: 'https://contoso.com'
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

await client.api('/agentRegistry/agentInstances')
	.version('beta')
	.post(agentInstance);

```