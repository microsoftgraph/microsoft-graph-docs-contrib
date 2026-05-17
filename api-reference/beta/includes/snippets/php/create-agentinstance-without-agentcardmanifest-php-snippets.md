---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AgentInstance;
use Microsoft\Graph\Beta\Generated\Models\AgentInterface;
use Microsoft\Graph\Beta\Generated\Models\AgentCardSignature;
use Microsoft\Graph\Beta\Generated\Models\JwsHeader;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AgentInstance();
$requestBody->setId('Security Copilot Platform Agent: 00222');
$requestBody->setOwnerIds(['daf58b0e-44e1-433c-b6b0-ca70cae320b8', 'b9108c41-d2d2-4e78-b073-92f57b752bd0', 	]);
$requestBody->setManagedBy('719cc904-9700-4e08-9941-fd826cc84c60');
$requestBody->setOriginatingStore('Microsoft Security Copilot');
$requestBody->setCreatedBy('d47bffae-411a-4de9-8548-05e79bc01f0d');
$requestBody->setDisplayName('Conditional Access Agent');
$requestBody->setSourceAgentId('00222');
$requestBody->setAgentIdentityBlueprintId('d0108c41-d2d2-4e78-b073-92f57b752bd0');
$requestBody->setAgentIdentityId('dd108c41-d2d2-4e78-b073-92f57b752bd0');
$requestBody->setAgentUserId('ee108c41-d2d2-4e78-b073-92f57b752bd0');
$requestBody->setCreatedDateTime(new \DateTime('2025-01-01T00:00:00.1234567Z'));
$requestBody->setLastModifiedDateTime(new \DateTime('2025-01-01T00:00:00.1234567Z'));
$requestBody->setUrl('https://conditional-access-agent.example.com/a2a/v1');
$requestBody->setPreferredTransport('JSONRPC');
$additionalInterfacesAgentInterface1 = new AgentInterface();
$additionalInterfacesAgentInterface1->setUrl('https://conditional-access-agent.example.com/a2a/v1');
$additionalInterfacesAgentInterface1->setTransport('JSONRPC');
$additionalInterfacesArray []= $additionalInterfacesAgentInterface1;
$additionalInterfacesAgentInterface2 = new AgentInterface();
$additionalInterfacesAgentInterface2->setUrl('https://conditional-access-agent.example.com/a2a/grpc');
$additionalInterfacesAgentInterface2->setTransport('GRPC');
$additionalInterfacesArray []= $additionalInterfacesAgentInterface2;
$additionalInterfacesAgentInterface3 = new AgentInterface();
$additionalInterfacesAgentInterface3->setUrl('https://conditional-access-agent.example.com/a2a/json');
$additionalInterfacesAgentInterface3->setTransport('HTTP+JSON');
$additionalInterfacesArray []= $additionalInterfacesAgentInterface3;
$requestBody->setAdditionalInterfaces($additionalInterfacesArray);

$signaturesAgentCardSignature1 = new AgentCardSignature();
$signaturesAgentCardSignature1->setEscapedProtected('eyJhbGciOiJFUzI1NiIsImtpZCI6ImRpZDp3ZWI6Y29udG9zby5leGFtcGxlI2tleS0xIiwidHlwIjoiYWdlbnRjYXJkK2p3cyJ9');
$signaturesAgentCardSignature1->setSignature('xOSim9oMw_CdZM-qDhmwpB5fJcBx5I30yh-FZULd1j9ruPEUBnJzmfCynNfH1KgmJ2B7ulAYc7D2iIb-4Ul-8w');
$signaturesAgentCardSignature1Header = new JwsHeader();
$additionalData = [
'kidHint' => 'contoso-key-1',
'nonce' => 'f1e9b6c3-2f3a-4a3a-b604-1f9af3f2a9c0',
];
$signaturesAgentCardSignature1Header->setAdditionalData($additionalData);
$signaturesAgentCardSignature1->setHeader($signaturesAgentCardSignature1Header);
$signaturesArray []= $signaturesAgentCardSignature1;
$requestBody->setSignatures($signaturesArray);


$result = $graphServiceClient->agentRegistry()->agentInstances()->post($requestBody)->wait();

```