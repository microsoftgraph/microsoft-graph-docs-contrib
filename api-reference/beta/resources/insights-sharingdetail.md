---
title: "sharingDetail resource type"
description: "Contains the properties of shared items. "
author: "simonhult"
ms.localizationpriority: medium
ms.subservice: "insights"
doc_type: resourcePageType
ms.date: 04/22/2024
---

# sharingDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains the properties of [sharedInsight](insights-shared.md) items. 

## Properties

| Property              | Type          | Description  |
| -------------         |-----------    | -------------|
| sharedDateTime      	| DateTimeOffset| The date and time the file was last shared. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.  |
| sharingSubject      	| String	      | The subject with which the document was shared. |
| sharingType     		  | String        | Determines the way the document was shared, can be by a "Link", "Attachment", "Group", "Site".     |
| sharedBy      	      | [insightIdentity](insights-insightidentity.md)	    | The user who shared the document.  |
| sharingReference		  | [resourceReference](insights-resourcereference.md)	    | Reference properties of the document, such as the URL and type of the document. Read-only |


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.sharingDetail"
}-->
```json
{
  "sharedDateTime": "dateTimeOffset",
  "sharingSubject": "string",
  "sharingType": "string",
  "sharedBy": "insightIdentity",
  "sharingReference": "resourceReference"
}
```


