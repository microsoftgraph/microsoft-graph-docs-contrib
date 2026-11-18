---
title: "repositoryPatCredential resource type"
description: "Supplies a personal access token as the **accessCredential** action parameter when connecting, discovering, modifying, or disconnecting a [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md). Credentials are write-only and aren't returned."
author: "AlexBrohshtut"
ms.date: 10/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# repositoryPatCredential resource type

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Supplies a personal access token as the **accessCredential** action parameter when connecting, discovering, modifying, or disconnecting a [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md). Credentials are write-only and aren't returned.


Inherits from [microsoft.graph.security.contentManagement.repositoryAccessCredential](../resources/security-contentmanagement-repositoryaccesscredential.md).


## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|token|String|Personal access token.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.contentManagement.repositoryPatCredential"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.contentManagement.repositoryPatCredential",
  "token": "String"
}
```
