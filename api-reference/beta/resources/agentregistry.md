---
title: "agentRegistry resource type"
description: "Represents the Microsoft Entra Agent Registry, which serves as a centralized repository for managing AI agents within an organization. The agent registry allows administrators to register, organize, and manage AI agents and their capabilities, including agent identities, agent users, and agent identity blueprints."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-agent-id"
doc_type: resourcePageType
---

# agentRegistry resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the [Microsoft Entra Agent Registry](/entra/agent-id/identity-platform/what-is-agent-registry), which serves as a centralized repository for managing AI agents within an organization. The agent registry allows administrators to register, organize, and manage AI agents and their capabilities, including agent identities, agent users, and agent identity blueprints.

Inherits from [entity](../resources/entity.md)

## Methods
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|agentCardManifests|[agentCardManifest](../resources/agentcardmanifest.md) collection|Represents the manifest definition for an AI agent.|
|agentCollections|[agentCollection](../resources/agentcollection.md) collection|Represents a collection of agent instances.|
|agentInstances|[agentInstance](../resources/agentinstance.md) collection|Represents a specific deployed instance of an AI agent in the agent registry.|


