---
title: "externalSponsors complex type"
description: "Identifies a relationship to another user in the tenant who will be allowed as approver."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---
# externalSponsors complex type

Namespace: microsoft.graph

Used in the approval stage of an access package assignment policy.
It's a subtype of [subjectSet](subjectset.md), in which the `@odata.type` value `#microsoft.graph.externalSponsors` indicates that a requesting user's connected organization external sponsors are to be the approver. This approver is only applicable to requests from users who are part of a connected organization.  When creating an access package assignment policy approval stage with externalSponsors, also include another approver, such as a single user or group member, in case the connected organization doesn't have an external sponsor.

## Properties

None.
## Relationships
None.
## JSON representation
Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.externalSponsors",
  "baseType": "microsoft.graph.subjectSet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalSponsors"
}
```



