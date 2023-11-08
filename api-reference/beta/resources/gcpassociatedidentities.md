---
title: "gcpAssociatedIdentities resource type"
description: "Container to represent different kinds of gcp identities."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# gcpAssociatedIdentities resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Container to represent different kinds of gcp identities.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|all|[gcpIdentity](../resources/gcpidentity.md) collection|Get the list of GCP identities.|
|serviceAccounts|[gcpServiceAccount](../resources/gcpserviceaccount.md) collection|Get the list of GCP service accounts.|
|users|[gcpUser](../resources/gcpuser.md) collection|Get the list of GCP users.|

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

