---
title: "employeeExperience resource type"
description: "Represents a container that exposes navigation properties for employee experience resources."
author: "malabikaroy"
ms.localizationpriority: medium
ms.prod: "employee-learning"
doc_type: resourcePageType
---

# employeeExperience resource type

Namespace: microsoft.graph

Represents a container that exposes navigation properties for employee experience resources.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List learningProviders](../api/employeeexperience-list-learningproviders.md)|[learningProvider](../resources/learningprovider.md) collection|Get a list of the [learningProvider](../resources/learningprovider.md) resources registered in Viva Learning for a tenant.|
|[Create learningProvider](../api/employeeexperience-post-learningproviders.md)|[learningProvider](../resources/learningprovider.md)|Create a new [learningProvider](../resources/learningprovider.md) object and register it with Viva Learning using the specified display name and logos for different themes.|

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|learningProviders|[learningProvider](../resources/learningprovider.md) collection|A collection of learning providers.|

## JSON representation

The following is a JSON representation of the resource.

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
