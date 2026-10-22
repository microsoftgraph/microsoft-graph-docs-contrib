---
title: "Create ring"
description: "Create a new ring object."
author: "andredm7"
ms.date: 02/05/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# Create ring

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [ring](../resources/windowsupdates-ring.md) object.

You can use this method with the following child object types: [driverUpdateRing](../resources/windowsupdates-driverupdatering.md), [featureUpdateRing](../resources/windowsupdates-featureupdatering.md), and [qualityUpdateRing](../resources/windowsupdates-qualityupdatering.md).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "windowsupdates_policy_post_rings" } -->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-policy-post-rings-permissions.md)]

[!INCLUDE [rbac-windows-updates-apis](../includes/rbac-for-apis/rbac-windows-updates-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/windows/updates/policies/{policyId}/rings
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [ring](../resources/windowsupdates-ring.md) object.

Because **ring** is abstract, specify the concrete type in the `@odata.type` property. Supported values include `#microsoft.graph.windowsUpdates.driverUpdateRing`, `#microsoft.graph.windowsUpdates.featureUpdateRing`, and `#microsoft.graph.windowsUpdates.qualityUpdateRing`.

You can specify the following properties when you create a **ring** object.

|Property|Type|Description|
|:---|:---|:---|
|deferralInDays|Int32|The update deferral period in days. The value must be between `0` and `30`. Optional.|
|description|String| The ring description. The maximum length is 1,500 characters. Required.|
|displayName|String| The ring display name. The maximum length is 200 characters. Required.|
|excludedGroupAssignment|[microsoft.graph.windowsUpdates.excludedGroupAssignment](../resources/windowsupdates-excludedgroupassignment.md)| Governs the update deployment audience with excluded groups. Groups are logical containers of devices represented by Microsoft Entra groups. Required.|
|includedGroupAssignment|[microsoft.graph.windowsUpdates.includedGroupAssignment](../resources/windowsupdates-includedgroupassignment.md)| Governs the update deployment audience with included groups. Groups are logical containers of devices represented by Microsoft Entra groups. Required.|
|isHotpatchEnabled|Boolean|Indicates whether hotpatch updates are enabled. Applies only to **qualityUpdateRing**. Required for that type.|
|isOfferOptional|Boolean|Indicates whether the feature update is offered to end users as optional. Applies only to **featureUpdateRing**. Required for that type.|
|isPaused|Boolean|Indicates whether update offers for the ring are paused. Required.|
|offerDurationInDays|Int32|The total length of the gradual rollout window, in days. Applies only to **featureUpdateRing**. Optional.|
|offerIntervalInDays|Int32|How often, in days, a new subset of devices is offered the update. Applies only to **featureUpdateRing**. Optional.|

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md) object in the response body.

## Examples

### Request

The following example shows how to create a feature update ring.
<!-- {
  "blockType": "request",
  "name": "create_featureupdatering"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/windows/updates/policies/22222222-2222-4222-8222-222222222222/rings
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.featureUpdateRing",
  "displayName": "Pilot",
  "description": "Pilot devices",
  "includedGroupAssignment": {
    "assignments": [
      {
        "groupId": "33333333-3333-4333-8333-333333333333"
      }
    ]
  },
  "excludedGroupAssignment": {
    "assignments": []
  },
  "deferralInDays": 0,
  "isPaused": false,
  "isOfferOptional": false,
  "offerDurationInDays": 1,
  "offerIntervalInDays": 0
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.featureUpdateRing"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.featureUpdateRing",
  "createdDateTime": "2026-09-28T11:05:00Z",
  "deferralInDays": 0,
  "description": "Pilot devices",
  "displayName": "Pilot",
  "excludedGroupAssignment": {
    "assignments": []
  },
  "id": "44444444-4444-4444-8444-444444444444",
  "includedGroupAssignment": {
    "assignments": [
      {
        "groupId": "33333333-3333-4333-8333-333333333333"
      }
    ]
  },
  "isOfferOptional": false,
  "isPaused": false,
  "lastModifiedDateTime": "2026-09-28T11:05:00Z",
  "offerDurationInDays": 1,
  "offerIntervalInDays": 0
}
```
