---
title: "servicePrincipalDeploymentIdentity resource type"
description: "Specifies a customer-provided service principal in the **deploymentIdentity** property or connect action parameter of a [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md)."
author: "AlexBrohshtut"
ms.date: 10/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# servicePrincipalDeploymentIdentity resource type

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies a customer-provided service principal in the **deploymentIdentity** property or connect action parameter of a [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md).


Inherits from [microsoft.graph.security.contentManagement.deploymentIdentity](../resources/security-contentmanagement-deploymentidentity.md).


## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|applicationId|String|Application (client) id of the customer-supplied service principal.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.contentManagement.servicePrincipalDeploymentIdentity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.contentManagement.servicePrincipalDeploymentIdentity",
  "applicationId": "String"
}
```
