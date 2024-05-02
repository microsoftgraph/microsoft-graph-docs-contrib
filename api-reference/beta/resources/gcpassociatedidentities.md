---
title: "gcpAssociatedIdentities resource type"
description: "A container for different kinds of GCP identities."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# gcpAssociatedIdentities resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A container for different kinds of GCP identities.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|all|[gcpIdentity](../resources/gcpidentity.md) collection|The list of GCP identities.|
|serviceAccounts|[gcpServiceAccount](../resources/gcpserviceaccount.md) collection|The list of GCP service accounts.|
|users|[gcpUser](../resources/gcpuser.md) collection|The list of GCP users.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.gcpAssociatedIdentities"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.gcpAssociatedIdentities"
}
```

