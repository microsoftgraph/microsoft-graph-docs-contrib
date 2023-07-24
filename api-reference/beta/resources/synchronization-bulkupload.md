---
title: "bulkUpload resource type"
description: "Represents capability of the synchronization service to process bulk uploads."
author: "cmmdesai"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: resourcePageType 
---

# bulkUpload resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the capability of the Azure AD synchronization service to process bulk uploads. The bulk upload request payload should be compliant with the [SCIM bulk request](https://www.rfc-editor.org/rfc/rfc7644.html#section-3.7) format.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Perform bulkUpload](../api/synchronization-synchronizationjob-post-bulkupload.md)| None |Perform a new bulk upload using the synchronization job.|

## Properties

None

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.bulkUpload",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.bulkUpload"
}
```
