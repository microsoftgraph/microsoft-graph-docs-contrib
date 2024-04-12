---
author: "vanshisingh"
description: "Archival Details Facet"
title: "siteArchivalDetails"
ms.localizationpriority: "medium"
ms.prod: "sharepoint"
---

# siteArchivalDetails resource type
The **SiteArchivalDetails** facet represents the archival details of the siteCollection.

## Properties
| Property      | Type   | Description                                    |
|:------------- |:------ |:-----------------------------------------------|
| archiveStatus | siteArchiveStatus enum | Represents the current archive status of the site collection. Returned only on $select.|

## siteArchiveStatus enumeration

| Value         | Description                                           |
|:--------------|:------------------------------------------------------|
| recentlyArchived | If the site collection has been recently archived. |
| fullyArchived | If the site collection has been fully archived.       |
| reactivating | If the site collection is getting reactivated.         |
| unknownFutureValue | For any upcoming unknown future value.           |

## JSON Representation
Here is a JSON representation of a **microsoft.graph.siteArchivalDetails** resource.
<!-- {
"blockType": "resource",
"@odata.type": "microsoft.graph.siteArchivalDetails",
"optionalProperties": []
}-->

```json
{
  "archiveStatus": "fullyArchived"
}
```

<!-- {
"type": "#page.annotation",
"createdBy": "API Clinic",
"section": "documentation"
}-->
