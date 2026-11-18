---
title: "repositoryWorkloadIdentityFederation resource type"
description: "Describes the read-only **workloadIdentityFederation** property of a [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md)."
author: "AlexBrohshtut"
ms.date: 10/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# repositoryWorkloadIdentityFederation resource type

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the read-only **workloadIdentityFederation** property of a [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md).


## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|appId|String|Application (client) id of the parent application.|
|federatedCredentialId|String|Federated credential id.|
|issuer|String|Federated credential issuer.|
|subject|String|Federated credential subject.|
|tenantId|String|Tenant id that owns the parent application.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.contentManagement.repositoryWorkloadIdentityFederation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.contentManagement.repositoryWorkloadIdentityFederation",
  "federatedCredentialId": "String",
  "tenantId": "String",
  "appId": "String",
  "subject": "String",
  "issuer": "String"
}
```
