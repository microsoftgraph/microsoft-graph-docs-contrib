---
title: "agentRegistry resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# agentRegistry resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List agentCardManifests](../api/agentregistry-list-agentcardmanifests.md)|[agentCardManifest](../resources/agentcardmanifest.md) collection|List all agent card manifest in the agent registry|
|[Update agentCardManifest](../api/agentcardmanifests-update.md)|[agentCardManifest](../resources/agentcardmanifest.md)|Update an agent card manifest in the agent registry|
|[List agentCollections](../api/agentregistry-list-agentcollections.md)|[agentCollection](../resources/agentcollection.md) collection|List all agent collections in the agent registry|
|[Create agentCollection](../api/agentregistry-post-agentcollections.md)|[agentCollection](../resources/agentcollection.md)|Create a new agentCollection object.|
|[Update agentCollection](../api/agentcollection-update.md)|[agentCollection](../resources/agentcollection.md)|Update an agentCollection object.|
|[List agentInstances](../api/agentregistry-list-agentinstances.md)|[agentInstance](../resources/agentinstance.md) collection|List all agentInstance in the agent registry|
|[Create agentInstance](../api/agentregistry-post-agentinstances.md)|[agentInstance](../resources/agentinstance.md)|Create a new agentInstance object|
|[Update agentInstance](../api/agentregistry-post-agentinstances.md)|[agentInstance](../resources/agentinstance.md)|Update an agentInstance object|
|[Delete agentInstance](../api/agentregistry-delete-agentinstances.md)|[agentInstance](../resources/agentinstance.md)|Delete an agentInstance object|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|agentCardManifests|[agentCardManifest](../resources/agentcardmanifest.md) collection|Represents the manifest definition for an AI agent|
|agentCollections|[agentCollection](../resources/agentcollection.md) collection|Represents a collection of agent instances.|
|agentInstances|[agentInstance](../resources/agentinstance.md) collection|Represents a specific deployed instance of an AI agent in the agent registry|


