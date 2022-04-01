---
title: "sharingDomainRestrictionMode enum type"
description: "The list of options for sharing files or sites with external domains."
author: "liamfernandez"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: "enumPageType"
---

# sharingDomainRestrictionMode enum type

Namespace: microsoft.graph.tenantAdmin

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The list of options in a tenant that control sharing with external domains.

## Members
|Member|Description|
|:---|:---|
| none               | No restrictions apply                                                                                                 |
| allowList          | Users will be able to share with external collaborators coming only from the list of allowed email domains.           |
| blockList          | Users will be able to share with all external collaborators apart from the ones on the list of blocked email domains. |