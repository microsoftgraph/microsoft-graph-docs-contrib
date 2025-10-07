---
title: "sharepointResourceAccessDetail resource type"
description: "Represents details about SharePoint resources accessed by AI agents, including identifiers and list item details."
author: "PatilAishwarya95"
ms.date: 10/03/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
toc.title: "SharePoint resource access detail"
---

# sharepointResourceAccessDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details about SharePoint resources accessed by AI agents, including identifiers and list item details.

Inherits from [resourceAccessDetail](../resources/resourceaccessdetail.md).

## Properties

| Property | Type | Description |
| :--- | :--- | :---|
| accessType                     | microsoft.graph.security.resourceAccessType   | Indicates the type of access performed on the resource. The possible values are: `none`, `read`, `write`, `create`, `unknownFutureValue`. Inherited from [resourceAccessDetail](../resources/resourceaccessdetail.md). |
| identifier                     | String                                        | Unique identifier of the resource accessed. Inherited from [resourceAccessDetail](../resources/resourceaccessdetail.md). |
| isCrossPromptInjectionDetected | Boolean                                       | Indicates whether cross-prompt injection was detected during the access attempt. Inherited from [resourceAccessDetail](../resources/resourceaccessdetail.md). |
| labelId                        | String                                        | Identifier for the sensitivity label applied to the resource, if any. Inherited from [resourceAccessDetail](../resources/resourceaccessdetail.md). |
| listItemUniqueId               | String                                        | The unique identifier of the SharePoint list item associated with the resource. |
| name                           | String                                        | Name of the resource accessed. Inherited from [resourceAccessDetail](../resources/resourceaccessdetail.md). |
| status                         | microsoft.graph.security.resourceAccessStatus | Indicates the status of the access attempt. The possible values are: `none`, `failure`, `success`, `unknownFutureValue`. Inherited from [resourceAccessDetail](../resources/resourceaccessdetail.md).|
| url                            | String                                        | URL of the resource accessed. Inherited from [resourceAccessDetail](../resources/resourceaccessdetail.md). |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.sharepointResourceAccessDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharepointResourceAccessDetail",
  "accessType": "String",
  "identifier": "String",
  "isCrossPromptInjectionDetected": "Boolean",
  "labelId": "String",
  "listItemUniqueId": "String",
  "name": "String",
  "status": "String",
  "url": "String"
}
```

