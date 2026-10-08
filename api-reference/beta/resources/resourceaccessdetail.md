---
title: "resourceAccessDetail resource type"
description: "Represents details about resources accessed by AI agents, including identifiers, access type, and status."
author: "PatilAishwarya95"
ms.date: 10/03/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---


# resourceAccessDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details about resources accessed by AI agents, including identifiers, access type, and status, recorded in the [processConversationMetadata](../resources/processconversationmetadata.md) object.

## Properties

| Property | Type | Description |
| :--- | :--- | :--- |
| accessType                     |  resourceAccessType | Indicates the type of access performed on the resource. The possible values are: `none`, `read`, `write`, `create`, `unknownFutureValue`. |
| identifier                     | String               | Unique identifier of the resource accessed. |
| isCrossPromptInjectionDetected | Boolean              | Indicates whether cross-prompt injection was detected during the access attempt. |
| labelId                        | String               | Identifier for the sensitivity label applied to the resource, if any. |
| name                           | String               | Name of the resource accessed. |
| status                         | resourceAccessStatus | Indicates the status of the access attempt. The possible values are: `none`, `failure`, `success`, `unknownFutureValue`. |
| url                            | String               | URL of the resource accessed. |
| storageId                      | String               | Identifier for the resource in its native storage format. For SharePoint resources, this is the unique identifier of the list item.  For other resources, this is the name of the location, such as Box, Dropbox, Exchange, or Google Drive. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.resourceAccessDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.resourceAccessDetail",
  "accessType": "String",
  "identifier": "String",
  "isCrossPromptInjectionDetected": "Boolean",
  "labelId": "String",
  "name": "String",
  "status": "String",
  "url": "String",
  "storageId": "String"
}
```
