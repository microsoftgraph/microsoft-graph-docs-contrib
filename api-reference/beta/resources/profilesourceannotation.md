---
title: "profileSourceAnnotation resource type"
description: "Represents the sources the user data comes from, such as Entra, UPA, Connector, and so on."
ms.localizationpriority: medium
author: "caiyuanle"
ms.subservice: "people"
doc_type: resourcePageType
ms.date: 09/11/2024
---

# profileSourceAnnotation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the sources the user data comes from, such as Entra, UPA, Connector, and so on.

## Properties
|Property	|Type	|Description|
|:--------|:----|:----------|
|id|String|The unique identifier (GUID) of the source.|
|isDefaultSource|Boolean|Indicates whether the source is the default one.|
|properties|String collection|Names of properties that have data from this source.|

### ID to source mapping

The following table shows the mapping between the **id** value and the source system.

| ID                                                                               | Source system                             |
|:---------------------------------------------------------------------------------|:------------------------------------------|
| 4ce763dd-9214-4eff-af7c-da491cc3782d, <br/> 0024a795-114d-4031-95c7-5fb543e00e80 | Microsoft Entra ID                        |
| 7986c642-b494-4140-8df4-f5ed125e2c67                                             | Organizational Data in Microsoft 365      |
| 6cdc4422-8c05-40c5-902e-8ade707725ab                                             | SharePoint User Profile Application (UPA) |
| 9a3e0ce2-cf4b-477e-b3b3-df246318e251                                             | Microsoft account (MSA)                   |
| 46a57efc-33f8-4eec-a512-b90039ad6187                                             | User initiated edits                      |
| 107a83c9-714e-4d52-9d08-c303f081323b                                             | Photo Etag                                |
| 75d4238e-b142-4d2d-aed9-232b830b8706                                             | Skills In Viva                            |

>**Note:**
> * The two Microsoft Entra IDs result from implementation differences and might be combined into one in the future.
> * If the value of a property derives from tenant admin-controlled systems, such as Microsoft Entra ID or Organizational Data in Microsoft 365, users can't directly edit the value through Microsoft Graph. If the value of a property originates from user-initiated edits, users can directly edit the value via Microsoft Graph.

For more information about how to set the values of properties in the **profileSourceAnnotation** resource, see [Where do property values come from](https://support.microsoft.com/office/export-data-from-your-profile-card-d809f83f-c077-4a95-9b6c-4f093305163d#ID0EBF=About_Microsoft_365_User_Profile_Data).

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.profileSourceAnnotation"
}-->

```json
{
  "id": "String (GUID)",
  "isDefaultSource": "Boolean",
  "properties": ["String"]
}
```
