---
title: "Add application"
description: "Add application by posting to the application collection."
author: "dhruvinrshah"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# Add application

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add application by posting to the application collection.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "ipapplicationsegment-post-application-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/ipapplicationsegment-post-application-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /onPremisesPublishingProfiles/{onPremisesPublishingProfilesId}/applicationSegments/{ipApplicationSegmentId}/application/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [application](../resources/application.md) object.

You can specify the following properties when creating an **application**.

|Property|Type|Description|
|:---|:---|:---|
|onPremisesPublishing|[onPremisesPublishing](../resources/onpremisespublishing.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `204 No Content` response code and an [application](../resources/application.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_application_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/onPremisesPublishingProfiles/{onPremisesPublishingProfilesId}/applicationSegments/{ipApplicationSegmentId}/application/$ref
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.application",
  "onPremisesPublishing": {
    "@odata.type": "microsoft.graph.onPremisesPublishing"
  }
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.application"
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.application",
  "id": "9ab833ae-6567-c8b0-ffed-9e7ece3bee35",
  "onPremisesPublishing": {
    "@odata.type": "microsoft.graph.onPremisesPublishing"
  }
}
```

