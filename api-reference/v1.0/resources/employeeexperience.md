---
title: "employeeExperience resource type"
description: "Represents a container that exposes navigation properties for employee experience resources."
author: "malabikaroy"
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: resourcePageType
ms.date: 08/19/2024
---

# employeeExperience resource type

Namespace: microsoft.graph

Represents a container that exposes navigation properties for employee experience resources.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List communities](../api/employeeexperience-list-communities.md)|[community](../resources/community.md) collection|Get a list of the Viva Engage [community](../resources/community.md) objects and their properties.|
|[Create community](../api/employeeexperience-post-communities.md)|[community](../resources/community.md)|Create a new [community](../resources/community.md) in Viva Engage.|
|[List learningProviders](../api/employeeexperience-list-learningproviders.md)|[learningProvider](../resources/learningprovider.md) collection|Get a list of the [learningProvider](../resources/learningprovider.md) resources registered in Viva Learning for a tenant.|
|[Create learningProvider](../api/employeeexperience-post-learningproviders.md)|[learningProvider](../resources/learningprovider.md)|Create a new [learningProvider](../resources/learningprovider.md) object and register it with Viva Learning using the specified display name and logos for different themes.|
|[List roles](../api/employeeexperience-list-roles.md)|[engagementRole](../resources/engagementrole.md) collection|Get a list of all the [roles](../resources/engagementrole.md) that can be assigned in Viva Engage.|

## Properties
None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|communities|[community](../resources/community.md) collection| A collection of communities in Viva Engage. |
|engagementAsyncOperations|[engagementAsyncOperation](../resources/engagementasyncoperation.md) collection| A collection of long-running, asynchronous operations related to Viva Engage. |
|learningProviders|[learningProvider](../resources/learningprovider.md) collection|A collection of learning providers.|
|roles|[engagementRole](../resources/engagementrole.md) collection|A collection of roles in Viva Engage.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.employeeExperience",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.employeeExperience"
}
```
