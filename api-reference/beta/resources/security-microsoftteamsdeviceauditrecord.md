---
title: "microsoftTeamsDeviceAuditRecord resource type"
description: "Represents an audit record that captures device-related activities in Microsoft Teams."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
toc.title: "Microsoft Teams device audit record"
---
# microsoftTeamsDeviceAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures device-related activities in Microsoft Teams. This record type documents events such as device registration, Teams devices management, configuration changes, firmware updates, and sign-in activities for dedicated Teams devices like Teams Rooms, desk phones, display devices, and other Teams-certified hardware, providing visibility into the management and usage of physical Teams devices within the organization.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.microsoftTeamsDeviceAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.microsoftTeamsDeviceAuditRecord"
}
```

