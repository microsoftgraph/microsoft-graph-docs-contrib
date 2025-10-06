---
title: "contentStoreResourceAccessDetail resource type"
description: "Represents details about resources stored in external content storage systems that were accessed by AI agents."
author: "PatilAishwarya95"
ms.date: 10/05/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# contentStoreResourceAccessDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details about resources stored in external content storage systems (such as Box, Dropbox, Exchange, Google Drive) that were accessed by AI agents.

Inherits from [resourceAccessDetail](../resources/resourceaccessdetail.md).

## Properties

| Property                       | Type                                          | Description                                                                                                                                                                                                                               |
| :----------------------------- | :-------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| accessType                     | microsoft.graph.security.resourceAccessType   | Indicates the type of access performed on the resource. Possible values: none, read, write, create, unknownFutureValue. Inherited from resourceAccessDetail. Inherited from [resourceAccessDetail](../resources/resourceaccessdetail.md). |
| identifier                     | String                                        | Unique identifier of the resource accessed. Inherited from [resourceAccessDetail](../resources/resourceaccessdetail.md).                                                                                                                  |
| isCrossPromptInjectionDetected | Boolean                                       | Indicates whether cross-prompt injection was detected during the access attempt. Inherited from [resourceAccessDetail](../resources/resourceaccessdetail.md).                                                                             |
| labelId                        | String                                        | Identifier for the sensitivity label applied to the resource, if any. Inherited from [resourceAccessDetail](../resources/resourceaccessdetail.md).                                                                                        |
| location                       | String                                        | Specifies the content storage location where the resource resides, such as Box, Dropbox, Exchange, or Google Drive.                                                                                                                       |
| name                           | String                                        | Name of the resource accessed. Inherited from [resourceAccessDetail](../resources/resourceaccessdetail.md).                                                                                                                               |
| status                         | microsoft.graph.security.resourceAccessStatus | Indicates the status of the access attempt. Possible values: `none`, `failure`, `success`, `unknownFutureValue`. Inherited from [resourceAccessDetail](../resources/resourceaccessdetail.md).                                             |
| url                            | String                                        | URL of the resource accessed. Inherited from [resourceAccessDetail](../resources/resourceaccessdetail.md).                                                                                                                                |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.contentStoreResourceAccessDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.contentStoreResourceAccessDetail",
  "identifier": "String",
  "name": "String",
  "url": "String",
  "labelId": "String",
  "accessType": "String",
  "status": "String",
  "isCrossPromptInjectionDetected": "Boolean",
  "location": "String"
}
```