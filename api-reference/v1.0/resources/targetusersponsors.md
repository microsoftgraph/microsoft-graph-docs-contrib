---
title: "targetUserSponsors complex type"
description: "Identifies a relationship to another user in the tenant who will be allowed as approver."
author: "sadia353"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# targetUserSponsors complex type

Namespace: microsoft.graph

Identifies a relationship to another user in the tenant who will be allowed as approver. Used in the approval settings of an [access package assignment policy](accesspackageassignmentpolicy.md).
This resource is a subtype of [subjectSet](subjectset.md), in which the `@odata.type` value `#microsoft.graph.targetUserSponsors` indicates that a requesting user's sponsors are the approvers. When creating an access package assignment policy approval stage with **targetUserSponsors**, also include another approver, such as a single user or group member, in case the requesting user doesn't have sponsors.

Inherits from [subjectSet](subjectset.md).

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.targetUserSponsors"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.targetUserSponsors",
}
```
