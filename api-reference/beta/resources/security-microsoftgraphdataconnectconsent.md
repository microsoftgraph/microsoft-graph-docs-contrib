---
title: "microsoftGraphDataConnectConsent resource type"
description: "Represents an audit record that captures consent activities related to Microsoft Graph Data Connect operations."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Microsoft Graph data connect consent"
---
# microsoftGraphDataConnectConsent resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures consent activities related to Microsoft Graph Data Connect operations. This record type documents events such as administrator approval or rejection of data access requests, consent scope changes, and consent review activities for bulk data access through Microsoft Graph Data Connect, providing visibility into data governance decisions for large-scale data extraction.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.microsoftGraphDataConnectConsent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.microsoftGraphDataConnectConsent"
}
```

