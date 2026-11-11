---
title: "repositoryOAuthCredential resource type"
description: "Supplies an OAuth authorization code as the **accessCredential** action parameter when connecting, discovering, modifying, or disconnecting a [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md). Credentials are write-only and aren't returned."
author: "AlexBrohshtut"
ms.date: 10/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# repositoryOAuthCredential resource type

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Supplies an OAuth authorization code as the **accessCredential** action parameter when connecting, discovering, modifying, or disconnecting a [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md). Credentials are write-only and aren't returned.


Inherits from [microsoft.graph.security.contentManagement.repositoryAccessCredential](../resources/security-contentmanagement-repositoryaccesscredential.md).


## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|clientId|String|OAuth client id.|
|code|String|OAuth authorization code.|
|codeVerifier|String|PKCE code verifier.|
|redirectUri|String|OAuth redirect URI.|
|state|String|OAuth state value.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.contentManagement.repositoryOAuthCredential"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.contentManagement.repositoryOAuthCredential",
  "code": "String",
  "state": "String",
  "clientId": "String",
  "redirectUri": "String",
  "codeVerifier": "String"
}
```
