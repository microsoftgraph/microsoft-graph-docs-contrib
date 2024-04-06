---
title: "Update retentionLabel"
description: "Update the properties of a retentionLabel object."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Update retentionLabel
Namespace: microsoft.graph.security

Update the properties of a [retentionLabel](../resources/security-retentionlabel.md) object.

To update a [disposition review stage](../resources/security-dispositionreviewstage.md), include the **actionAfterRetentionPeriod** property in the request body with one of the possible values specified.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_retentionlabel_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-retentionlabel-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /security/labels/retentionLabels/{retentionLabelId}

```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|descriptionForAdmins|String|This is an optional property that provides the label information for the admin.|
|descriptionForUsers|String|This is an optional property that provides the label information for the user.|
|dispositionReviewStages|[microsoft.graph.security.dispositionReviewStage](../resources/security-dispositionreviewstage.md) collection|Review stages during which reviewers are notified to determine whether a document must be deleted or retained.|
|retentionDuration|[microsoft.graph.security.retentionDuration](../resources/security-retentionduration.md)|Specifies the number of days to retain the content.|
|defaultRecordBehavior|microsoft.graph.security.defaultRecordBehavior|Specifies the locked or unlocked state of a record label when it is created. The possible values are: `startLocked`, `startUnlocked`, `unknownFutureValue`.|
|labelToBeApplied|String|Specifies the replacement label to be applied automatically after the retention period of the current label ends. |



## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
Here's an example of a request.

<!-- {
  "blockType": "request",
  "name": "update_retentionlabel"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/labels/retentionLabels/9563a605-e827-4324-a5a9-09efddff1e50
Content-Type: application/json
Content-length: 555

{
  "@odata.type": "#microsoft.graph.security.retentionLabel",
  "retentionDuration": {
    "@odata.type": "microsoft.graph.security.retentionDurationInDays",
    "days": 2555
  },
}
```

### Response
Here's an example of the response.

<!-- {
  "blockType": "response"
}
-->
``` http
HTTP/1.1 204 No Content
```

