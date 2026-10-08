---
title: "accessPackageAssignmentRequestParameters resource type"
description: "Represents additional parameters that can be supplied when creating an access package assignment request, such as bypassing the approval requirement."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 07/14/2026
---

# accessPackageAssignmentRequestParameters resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Microsoft Entra entitlement management](entitlementmanagement-overview.md), this resource represents additional parameters that can be supplied when creating an [accessPackageAssignmentRequest](accesspackageassignmentrequest.md). Use it to control how the request is processed, such as bypassing the approval requirement that's configured on the access package policy.

In entitlement management, this object is configured in the **parameters** property of the [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) resource.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|bypassApproval|Boolean|When `true`, bypasses the approval requirement configured on the access package policy for this request. The default value is `false`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageAssignmentRequestParameters"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageAssignmentRequestParameters",
  "bypassApproval": "Boolean"
}
```

<!-- {
  "type": "#page.annotation",
  "description": "accessPackageAssignmentRequestParameters resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
