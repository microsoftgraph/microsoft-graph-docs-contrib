---
title: "employeeExperience resource type"
description: "Represents a container that exposes navigation properties for employee experience resources."
author: "malabikaroy"
ms.localizationpriority: medium
ms.prod: "employee-experience"
doc_type: resourcePageType
---

# employeeExperience resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container that exposes navigation properties for employee experience resources.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Create community](../api/employeeexperience-post-communities.md)|[community](../resources/community.md)|Create a new [community](../resources/community.md) in Viva Engage.|
|[Get community](../api/community-get.md)|[community](../resources/community.md)|Read the properties and relationships of a [community](../resources/community.md) object.|
|[List learningProviders](../api/employeeexperience-list-learningproviders.md)|[learningProvider](../resources/learningprovider.md) collection|Get a list of the [learningProvider](../resources/learningprovider.md) resources registered in Viva Learning for a tenant.|
|[Create learningProvider](../api/employeeexperience-post-learningproviders.md)|[learningProvider](../resources/learningprovider.md)|Create a new [learningProvider](../resources/learningprovider.md) object and register it with Viva Learning using the specified display name and logos for different themes.|

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|communities|[community](../resources/community.md) collection| A collection of communities in Viva Engage. |
|engagementAsyncOperations|[engagementAsyncOperation](../resources/engagementasyncoperation.md) collection| A collection of long-running, asynchronous operations related to Viva Engage. |
|goals|[goals](../resources/goals.md) collection|Represents a collection of goals in a Viva Goals organization.|
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
