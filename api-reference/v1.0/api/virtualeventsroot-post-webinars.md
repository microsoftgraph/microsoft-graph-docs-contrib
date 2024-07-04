---
title: "Create virtualEventWebinar"
description: "Create a new virtualEventWebinar object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create virtualEventWebinar

Namespace: microsoft.graph



Create a new [virtualEventWebinar](../resources/virtualeventwebinar.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventsroot-post-webinars-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventsroot-post-webinars-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/virtualEvents/webinars
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [virtualEventWebinar](../resources/virtualeventwebinar.md) object.

You can specify the following properties when creating a **virtualEventWebinar**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|status|virtualEventStatus|**TODO: Add Description** Inherited from [virtualEvent](../resources/virtualevent.md). The possible values are: `draft`, `published`, `canceled`, `unknownFutureValue`. Optional.|
|displayName|String|**TODO: Add Description** Inherited from [virtualEvent](../resources/virtualevent.md). Optional.|
|description|[itemBody](../resources/itembody.md)|**TODO: Add Description** Inherited from [virtualEvent](../resources/virtualevent.md). Optional.|
|startDateTime|[dateTimeTimeZone](../resources/intune-datetimetimezone.md)|**TODO: Add Description** Inherited from [virtualEvent](../resources/virtualevent.md). Optional.|
|endDateTime|[dateTimeTimeZone](../resources/intune-datetimetimezone.md)|**TODO: Add Description** Inherited from [virtualEvent](../resources/virtualevent.md). Optional.|
|createdBy|[communicationsIdentitySet](../resources/communicationsidentityset.md)|**TODO: Add Description** Inherited from [virtualEvent](../resources/virtualevent.md). Optional.|
|audience|meetingAudience|**TODO: Add Description**. The possible values are: `everyone`, `organization`, `unknownFutureValue`. Optional.|
|coOrganizers|[communicationsUserIdentity](../resources/communicationsuseridentity.md) collection|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [virtualEventWebinar](../resources/virtualeventwebinar.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_virtualeventwebinar_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/solutions/virtualEvents/webinars
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.virtualEventWebinar",
  "status": "String",
  "displayName": "String",
  "description": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "startDateTime": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "endDateTime": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "createdBy": {
    "@odata.type": "microsoft.graph.communicationsIdentitySet"
  },
  "audience": "String",
  "coOrganizers": [
    {
      "@odata.type": "microsoft.graph.communicationsUserIdentity"
    }
  ]
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEventWebinar"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.virtualEventWebinar",
  "id": "88b245ac-b0b2-f1aa-e34a-c81c27abdac2",
  "status": "String",
  "displayName": "String",
  "description": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "startDateTime": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "endDateTime": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "createdBy": {
    "@odata.type": "microsoft.graph.communicationsIdentitySet"
  },
  "audience": "String",
  "coOrganizers": [
    {
      "@odata.type": "microsoft.graph.communicationsUserIdentity"
    }
  ]
}
```

