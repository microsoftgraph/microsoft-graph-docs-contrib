---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const agentCardManifest = {
  '@odata.type': '#microsoft.graph.agentCardManifest',
  ownerIds: [
    'String'
  ],
  managedBy: 'String',
  originatingStore: 'String',
  createdBy: 'String',
  protocolVersion: 'String',
  displayName: 'String',
  description: 'String',
  iconUrl: 'String',
  provider: {
    '@odata.type': 'microsoft.graph.agentProvider'
  },
  version: 'String',
  documentationUrl: 'String',
  capabilities: {
    '@odata.type': 'microsoft.graph.agentCapabilities'
  },
  securitySchemes: {
    '@odata.type': 'microsoft.graph.securitySchemes'
  },
  security: [
    {
      '@odata.type': 'microsoft.graph.securityRequirement'
    }
  ],
  defaultInputModes: [
    'String'
  ],
  defaultOutputModes: [
    'String'
  ],
  skills: [
    {
      '@odata.type': 'microsoft.graph.agentSkill'
    }
  ],
  supportsAuthenticatedExtendedCard: 'Boolean'
};

await client.api('/agentRegistry/agentCardManifests/{agentCardManifestId}')
	.version('beta')
	.update(agentCardManifest);

```