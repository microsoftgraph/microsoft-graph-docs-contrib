---
title: "discoveredRepository resource type"
description: "Represents an item in the **discoverAvailableRepositories** action response for a [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md), using its **accessCredential** action parameter. The result is transient and has no stable identifier."
author: "AlexBrohshtut"
ms.date: 10/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# discoveredRepository resource type

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an item in the **discoverAvailableRepositories** action response for a [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md), using its **accessCredential** action parameter. The result is transient and has no stable identifier.


## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|branches|String collection|Branch names available in the repository.|
|fullName|String|Provider full name, for example `owner/repo`.|
|url|String|Repository URL.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.contentManagement.discoveredRepository"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.contentManagement.discoveredRepository",
  "url": "String",
  "fullName": "String",
  "branches": [
    "String"
  ]
}
```
