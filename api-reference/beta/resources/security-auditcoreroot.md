---
title: "auditCoreRoot resource type"
description: "auditCoreRoot is the root path name for the Audit Logs Query API."
author: "arishojaswi"
ms.localizationpriority: medium
ms.prod: "auditlogquery"
doc_type: resourcePageType
---

# auditCoreRoot resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Microsoft Graph APIs for Audit Search provide functionality for organizations to automate repetitive tasks involving retrieval of Audit records. For details about searching the Audit log, see [Search the audit log in the Microsoft Purview compliance portal](https://learn.microsoft.com/en-us/microsoft-365/compliance/audit-log-search?view=o365-worldwide).


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List auditCoreRoots](../api/security-security-list-auditcore.md)|[microsoft.graph.security.auditCoreRoot](../resources/security-auditcoreroot.md) collection|Get a list of the [microsoft.graph.security.auditCoreRoot](../resources/security-auditcoreroot.md) objects and their properties.|
|[Create auditCoreRoot](../api/security-security-post-auditcore.md)|[microsoft.graph.security.auditCoreRoot](../resources/security-auditcoreroot.md)|Create a new [microsoft.graph.security.auditCoreRoot](../resources/security-auditcoreroot.md) object.|
|[Get auditCoreRoot](../api/security-auditcoreroot-get.md)|[microsoft.graph.security.auditCoreRoot](../resources/security-auditcoreroot.md)|Read the properties and relationships of a [microsoft.graph.security.auditCoreRoot](../resources/security-auditcoreroot.md) object.|
|[Update auditCoreRoot](../api/security-auditcoreroot-update.md)|[microsoft.graph.security.auditCoreRoot](../resources/security-auditcoreroot.md)|Update the properties of a [microsoft.graph.security.auditCoreRoot](../resources/security-auditcoreroot.md) object.|
|[Delete auditCoreRoot](../api/security-security-delete-auditcore.md)|None|Delete a [microsoft.graph.security.auditCoreRoot](../resources/security-auditcoreroot.md) object.|
|[List auditLogQueries](../api/security-auditcoreroot-list-auditlogqueries.md)|[microsoft.graph.security.auditLogQuery](../resources/security-auditlogquery.md) collection|Get the auditLogQuery resources from the auditLogQueries navigation property.|
|[Create auditLogQuery](../api/security-auditcoreroot-post-auditlogqueries.md)|[microsoft.graph.security.auditLogQuery](../resources/security-auditlogquery.md)|Create a new auditLogQuery object.|


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.auditCoreRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.auditCoreRoot",
  "id": "String (identifier)"
}
```

