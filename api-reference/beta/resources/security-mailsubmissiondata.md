---
title: "mailSubmissionData resource type"
description: "Represents data related to email submissions for security review, such as phishing or spam reports from users."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Mail submission data"
---
# mailSubmissionData resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents data related to email submissions for security review, such as phishing or spam reports from users. This resource type captures information about emails that have been submitted for analysis, including submission details, sender information, recipient information, and analysis results, providing visibility into user-reported security concerns and their processing.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.mailSubmissionData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.mailSubmissionData"
}
```

