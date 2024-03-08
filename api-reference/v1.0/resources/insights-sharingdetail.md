---
title: "sharingDetail resource type"
description: "Contains properties of shared items. "
author: "simonhult"
ms.localizationpriority: medium
ms.prod: "insights"
doc_type: resourcePageType
---

# sharingDetail resource type

Namespace: microsoft.graph

Contains properties of [sharedInsight](insights-shared.md) items. 

## Properties

| Property              | Type          | Description  |
| -------------         |-----------    | -------------|
| sharedBy      	      | [insightIdentity](insights-insightidentity.md)	    | The user who shared the document.  |
| sharedDateTime      	| DateTimeOffset| The date and time the file was last shared. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.  |
| sharingSubject      	| String	      | The subject with which the document was shared. |
| sharingType     		  | String        | Determines the way the document was shared. Can be by a 1Link1, 1Attachment1, 1Group1, 1Site1.     |
| sharingReference		  | [resourceReference](insights-resourcereference.md)	    | Reference properties of the document, such as the URL and type of the document. Read-only  |


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

